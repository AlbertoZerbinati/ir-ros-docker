#include <ros/ros.h>
#include <srv_tutorial/srv1.h>

int main(int argc, char **argv) {
    ros::init(argc, argv, "client_node");
    ros::NodeHandle nh;

    // Create the service client and tell ros that this is a sercice client node
    ros::ServiceClient client = nh.serviceClient<srv_tutorial::srv1>("add_3");
    // add_3 : Service name

    // Set the request fields
    srv_tutorial::srv1 srv;
    srv.request.A = atoll(argv[1]);
    srv.request.B = atoll(argv[2]);
    srv.request.C = atoll(argv[3]);

    // Call the service
    if (client.call(srv)) {
        // If successful, then print the response content
        int res = (int)srv.response.sum;
        ROS_INFO("response: sum=%d", res);
    } else {
        ROS_FATAL("error in the service");
        return 1;
    }

    return 0;
}
