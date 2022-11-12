#include <ros/ros.h>
#include <intro_tutorial/msg1.h>

int main(int argc, char **argv) {
    ros::init(argc, argv, "pub_node");

    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<intro_tutorial::msg1>("alberto", 1);

    ros::Rate rate(10);
    while(true) {
        intro_tutorial::msg1 msg;
        msg.A = 1;
        msg.B = 2;
        msg.C = "hello world";

        pub.publish(msg);
        rate.sleep();
    }

    return 0;
}
