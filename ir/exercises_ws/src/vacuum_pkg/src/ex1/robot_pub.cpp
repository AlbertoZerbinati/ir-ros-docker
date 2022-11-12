#include "ros/ros.h"
#include "vacuum_pkg/status_msg.h"
#include <sstream>

const std::string CHARGE_TOPIC = "charge_status";

struct RobotData {
    std::string roomId;
    std::string roomName;
    float battery;
};

std::list<RobotData> data = { 
    RobotData { "1", "Robot Vision Lab", 99 }, 
    RobotData { "1", "Robot Vision Lab", 90 }, 
    RobotData { "1", "Robot Vision Lab", 80 }, 
    RobotData { "2", "Neurorobotics Lab", 75 }, 
    RobotData { "2", "Neurorobotics Lab", 70 }, 
    RobotData { "2", "Neurorobotics Lab", 60 }, 
    RobotData { "2", "Neurorobotics Lab", 59 }, 
    RobotData { "2", "Neurorobotics Lab", 50 }, 
    RobotData { "3", "SSL Lab", 46 }, 
    RobotData { "3", "SSL Lab", 41 }, 
    RobotData { "3", "SSL Lab", 38 }, 
    RobotData { "4", "IAS-Lab", 30 }, 
    RobotData { "4", "IAS-Lab", 22 }, 
    RobotData { "5", "Autonomous Robotics Lab", 20 }, 
    RobotData { "5", "Autonomous Robotics Lab", 10 }, 
    RobotData { "5", "Autonomous Robotics Lab", 6 }, 

};

int main(int argc, char **argv) {
    ros::init(argc, argv, "robot_node");

    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<vacuum_pkg::status_msg>(CHARGE_TOPIC, 1000);

    ros::Rate loop_rate(5);

    std::list<RobotData>::iterator it;
    for (it = data.begin(); it != data.end(); ++it) {
        vacuum_pkg::status_msg status;
        status.ROOM_ID = it->roomId;
        status.ROOM_NAME = it->roomName;
        status.BATTERY = it->battery;

        pub.publish(status);
        ros::spinOnce();
        loop_rate.sleep();
    }

    // while(ros::ok()) {
    //     vacuum_pkg::status status;
    //     status.ROOM_ID = "1";
    //     status.ROOM_NAME = "Robot Vision Lab";
    //     status.BATTERY = 40;

    //     pub.publish(status);
    //     ros::spinOnce();
    //     loop_rate.sleep();
    // }

    return 0;
}
