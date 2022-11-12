#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <cmath>
#include "vacuum_pkg/StatusAction.h"

const int INITIAL_CHARGE_LEVEL = 5;

class StatusAction {
protected:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<vacuum_pkg::StatusAction> as_;
    std::string action_name_;
    vacuum_pkg::StatusFeedback feedback_;
    vacuum_pkg::StatusResult result_;

public:
    StatusAction(std::string name) : as_(
            nh_, name, boost::bind(&StatusAction::callback, this, _1), false
        ),
        action_name_(name) {
            as_.start();
    }
    
    ~StatusAction(void) {}

    void callback(const vacuum_pkg::StatusGoalConstPtr &goal) {
        ros::Rate r(1);
        ros::Time begin = ros::Time::now();
        const float timeInterval = 60.0 / (goal->charge - INITIAL_CHARGE_LEVEL);

        bool success = true;
        for (int i = 1; i <= 60; i++) {
            if (as_.isPreemptRequested() || !ros::ok()) {
                ROS_INFO("%s: Preempted", action_name_.c_str());
                as_.setPreempted();
                success = false;
                break;
            }
            ROS_INFO("%d, %d\n", i, feedback_.chargeLevel);
            // increase the battery every timeInterval seconds
            feedback_.chargeLevel = INITIAL_CHARGE_LEVEL + round(+ i / timeInterval);
            
            as_.publishFeedback(feedback_); // publish the feedback every second
            r.sleep();
            ROS_INFO("%f\n", timeInterval);
        }

        if (success) {
            result_.isLevelReached = true;
            ROS_INFO("%s: Succeeded", action_name_.c_str());
            as_.setSucceeded(result_);
        } else {
            result_.isLevelReached = false;
            ROS_INFO("%s: Failed", action_name_.c_str());
            as_.setAborted(result_);
        }
    }
};

int main(int argc, char **argv) {
    ros::init(argc, argv, "status_action_server");

    StatusAction status("status");
    ros::spin();

    return 0;
}
