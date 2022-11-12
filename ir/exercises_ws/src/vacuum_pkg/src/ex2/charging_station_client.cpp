#include <ros/ros.h>
#include "vacuum_pkg/status_msg.h"
#include "vacuum_pkg/status_srv.h"

// Static map associating charging station IDs with their polling time in seconds
std::map<std::string, int> charging_stations_polling_time { 
    { "423", 3 },
    { "424", 4 },
    { "425", 5 },
    { "427", 7 },
};

int main(int argc, char **argv) {
    ros::init(argc, argv, "charging_station_client_node");
    ros::NodeHandle nh;

    // Create the service client and tell ros that this is a sercice client node
    ros::ServiceClient client = nh.serviceClient<vacuum_pkg::status_srv>("status_srv");

    // Check valid input ID
    std::vector<std::string> charing_station_ids;
    for (auto it = charging_stations_polling_time.begin(); it != charging_stations_polling_time.end(); it++) {
        charing_station_ids.push_back(it->first);
    }
    if (std::find(charing_station_ids.begin(), charing_station_ids.end(), argv[1]) == charing_station_ids.end()) {
        ROS_ERROR("Invalid charging station ID");
        return 1;
    }

    // Set the request field
    vacuum_pkg::status_srv srv;
    srv.request.ID = argv[1];

    // Call the service with correct frequency
    ros::Rate loop_rate(1.0/charging_stations_polling_time[argv[1]]);
    while (client.call(srv)) {
        // If successful, then print the response message
        vacuum_pkg::status_msg res = srv.response.status;
        ROS_INFO("\n---------\nCharging station ID=%s\n\nRobot in %s (id=%s) with battery at %.1f%%\n---------\n",
            argv[1],
            res.ROOM_NAME.c_str(),
            res.ROOM_ID.c_str(),
            res.BATTERY
        );
        loop_rate.sleep();
    }

    return 0;
}
