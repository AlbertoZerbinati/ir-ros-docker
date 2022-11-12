#include <ros/ros.h>
#include <srv_tutorial/srv1.h>

// Receives in input a reference to a [Request] (input) and a [Response] (output)
// Return a boolean: true if the service worked correctly
bool add(srv_tutorial::srv1::Request &req, srv_tutorial::srv1::Response &res) {
    res.sum = req.A + req.B + req.C;
    ROS_INFO("request: A=%d, B=%d, C=%d", (int)req.A, (int)req.B, (int)req.C);
    ROS_INFO("reponse: sum=%d", (int)res.sum);

    return true;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "server_node"); // Name of the node

    // Create the service server and advertise ros that this is a service server node
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("add_3", add);
    // add_3 : Service name
    // add   : Member function pointer to call when a message has arrived

    ROS_INFO("service server running");
    ros::spin();

    return 0;
}
