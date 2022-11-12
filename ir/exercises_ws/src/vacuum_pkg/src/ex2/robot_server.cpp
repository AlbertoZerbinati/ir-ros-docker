#include <ros/ros.h>
#include <vacuum_pkg/status_srv.h>

// Receives in input a reference to a [Request] (input) and a [Response] (output)
// Return a boolean: true if the service worked correctly
bool robot_status(vacuum_pkg::status_srv::Request &req, vacuum_pkg::status_srv::Response &res) {
    res.status.ROOM_NAME = "Robot Vision Lab";
    res.status.ROOM_ID = "1";
    res.status.BATTERY = 100.0;

    ROS_INFO(">> request: charing station ID=%s", req.ID.c_str());
    ROS_INFO(
        ">> response: Robot in %s (id=%s) with battery at %.1f%%\n",
        res.status.ROOM_NAME.c_str(),
        res.status.ROOM_ID.c_str(),
        res.status.BATTERY
    );

    return true;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "robot_server_node"); // Name of the node

    // Create the service server and advertise ros that this is a service server node
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("status_srv", robot_status);

    ROS_INFO("service server running");
    ros::spin();

    return 0;
}
