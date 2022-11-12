#include "ros/ros.h"
#include "vacuum_pkg/status_msg.h"

const std::string CHARGE_TOPIC = "charge_status";

void messageCallback(const vacuum_pkg::status_msg::ConstPtr &status) {
    ROS_INFO(
        "Robot in %s (id=%s) with battery at %.1f%%.",
        status->ROOM_NAME.c_str(),
        status->ROOM_ID.c_str(),
        status->BATTERY
    );
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "charging_station_node");
    
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe(CHARGE_TOPIC, 1000, messageCallback);
    ros::spin();

    return 0;
}
