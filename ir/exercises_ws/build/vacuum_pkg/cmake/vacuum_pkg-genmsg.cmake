# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vacuum_pkg: 8 messages, 1 services")

set(MSG_I_FLAGS "-Ivacuum_pkg:/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg;-Ivacuum_pkg:/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vacuum_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" "actionlib_msgs/GoalID:vacuum_pkg/StatusResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" "vacuum_pkg/status_msg:std_msgs/Header"
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" ""
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" ""
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" "actionlib_msgs/GoalID:vacuum_pkg/StatusFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" "actionlib_msgs/GoalID:vacuum_pkg/StatusGoal:std_msgs/Header"
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" ""
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" "actionlib_msgs/GoalID:vacuum_pkg/StatusGoal:std_msgs/Header:vacuum_pkg/StatusActionGoal:vacuum_pkg/StatusResult:vacuum_pkg/StatusFeedback:vacuum_pkg/StatusActionResult:actionlib_msgs/GoalStatus:vacuum_pkg/StatusActionFeedback"
)

get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" NAME_WE)
add_custom_target(_vacuum_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vacuum_pkg" "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)

### Generating Services
_generate_srv_cpp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv"
  "${MSG_I_FLAGS}"
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
)

### Generating Module File
_generate_module_cpp(vacuum_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vacuum_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vacuum_pkg_generate_messages vacuum_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_cpp _vacuum_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vacuum_pkg_gencpp)
add_dependencies(vacuum_pkg_gencpp vacuum_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vacuum_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)

### Generating Services
_generate_srv_eus(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv"
  "${MSG_I_FLAGS}"
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
)

### Generating Module File
_generate_module_eus(vacuum_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vacuum_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vacuum_pkg_generate_messages vacuum_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_eus _vacuum_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vacuum_pkg_geneus)
add_dependencies(vacuum_pkg_geneus vacuum_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vacuum_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)

### Generating Services
_generate_srv_lisp(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv"
  "${MSG_I_FLAGS}"
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
)

### Generating Module File
_generate_module_lisp(vacuum_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vacuum_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vacuum_pkg_generate_messages vacuum_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_lisp _vacuum_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vacuum_pkg_genlisp)
add_dependencies(vacuum_pkg_genlisp vacuum_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vacuum_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)

### Generating Services
_generate_srv_nodejs(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv"
  "${MSG_I_FLAGS}"
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
)

### Generating Module File
_generate_module_nodejs(vacuum_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vacuum_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vacuum_pkg_generate_messages vacuum_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_nodejs _vacuum_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vacuum_pkg_gennodejs)
add_dependencies(vacuum_pkg_gennodejs vacuum_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vacuum_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)
_generate_msg_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)

### Generating Services
_generate_srv_py(vacuum_pkg
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv"
  "${MSG_I_FLAGS}"
  "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
)

### Generating Module File
_generate_module_py(vacuum_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vacuum_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vacuum_pkg_generate_messages vacuum_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/srv/status_srv.srv" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/src/vacuum_pkg/msg/status_msg.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionFeedback.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusActionGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusGoal.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusAction.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/ir-ros-docker/ir/exercises_ws/devel/.private/vacuum_pkg/share/vacuum_pkg/msg/StatusResult.msg" NAME_WE)
add_dependencies(vacuum_pkg_generate_messages_py _vacuum_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vacuum_pkg_genpy)
add_dependencies(vacuum_pkg_genpy vacuum_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vacuum_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vacuum_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vacuum_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(vacuum_pkg_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vacuum_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vacuum_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(vacuum_pkg_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vacuum_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vacuum_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(vacuum_pkg_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vacuum_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vacuum_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(vacuum_pkg_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vacuum_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vacuum_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(vacuum_pkg_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
