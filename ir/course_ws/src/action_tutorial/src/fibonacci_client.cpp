#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <action_tutorial/FibonacciAction.h>

int main(int argc, char **argv) {
    ros::init(argc, argv, "test_fibonacci");

    actionlib::SimpleActionClient<action_tutorial::FibonacciAction> ac("fibonacci", true);
    
    ROS_INFO("Waiting for action server to start.");
    ac.waitForServer(); // will wait for infinite time
    ROS_INFO("Action server started, sending goal.");
    action_tutorial::FibonacciGoal goal;
    goal.order = 20;
    ac.sendGoal(goal);

    bool finished_before_timeout = ac.waitForResult(ros::Duration(30.0));
    if (finished_before_timeout) {
        actionlib::SimpleClientGoalState state = ac.getState();
        ROS_INFO("Action finished: %s", state.toString().c_str());
        action_tutorial::FibonacciResultConstPtr result = ac.getResult();

        for (int num : result->sequence) {
            ROS_INFO("%d ", num);
        }
    }
    else {
        ROS_INFO("Action did not finish before the time out.");
    }

    return 0;
}
