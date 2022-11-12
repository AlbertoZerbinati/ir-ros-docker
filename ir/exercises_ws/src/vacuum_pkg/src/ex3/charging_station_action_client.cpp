#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include "vacuum_pkg/StatusAction.h"

int main(int argc, char **argv) {
    ros::init(argc, argv, "status_action_client");

    actionlib::SimpleActionClient<vacuum_pkg::StatusAction> ac("status", true);
    
    ac.waitForServer(); // will wait for infinite time
    ROS_INFO("Sending charge goal to the robot.");
    vacuum_pkg::StatusGoal goal;
    goal.charge = 85;
    ac.sendGoal(goal);

    bool finished_before_timeout = ac.waitForResult(ros::Duration(0));
    if (finished_before_timeout) {
        actionlib::SimpleClientGoalState state = ac.getState();
        ROS_INFO("Action finished: %s", state.toString().c_str());
        vacuum_pkg::StatusResultConstPtr result = ac.getResult();
        ROS_INFO("%s", result->isLevelReached ? "true" : "alse");
    }
    else {
        ROS_INFO("Action did not finish before the time out.");
    }

    return 0;
}
