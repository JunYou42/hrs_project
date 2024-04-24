# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hrs_project: 21 messages, 1 services")

set(MSG_I_FLAGS "-Ihrs_project:/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hrs_project_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:hrs_project/SetSpeechVocabularyGoal:hrs_project/SetSpeechVocabularyActionGoal:hrs_project/SetSpeechVocabularyActionFeedback:hrs_project/SetSpeechVocabularyResult:hrs_project/SetSpeechVocabularyFeedback:hrs_project/SetSpeechVocabularyActionResult:std_msgs/Header"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" "hrs_project/SpeechWithFeedbackResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" "hrs_project/SetSpeechVocabularyFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" "hrs_project/SpeechWithFeedbackGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" "std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" "hrs_project/SpeechWithFeedbackFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" "hrs_project/BlinkResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" "std_msgs/ColorRGBA:actionlib_msgs/GoalID:hrs_project/BlinkFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:hrs_project/SetSpeechVocabularyGoal"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" "std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" "hrs_project/BlinkGoal:actionlib_msgs/GoalID:std_msgs/Header:std_msgs/ColorRGBA"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" "std_msgs/ColorRGBA:hrs_project/BlinkActionFeedback:std_msgs/Header:hrs_project/BlinkResult:hrs_project/BlinkGoal:hrs_project/BlinkActionGoal:hrs_project/BlinkActionResult:actionlib_msgs/GoalID:hrs_project/BlinkFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" "actionlib_msgs/GoalStatus:hrs_project/SpeechWithFeedbackFeedback:hrs_project/SpeechWithFeedbackGoal:hrs_project/SpeechWithFeedbackActionFeedback:hrs_project/SpeechWithFeedbackResult:std_msgs/Header:actionlib_msgs/GoalID:hrs_project/SpeechWithFeedbackActionGoal:hrs_project/SpeechWithFeedbackActionResult"
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" ""
)

get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" NAME_WE)
add_custom_target(_hrs_project_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hrs_project" "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:hrs_project/SetSpeechVocabularyResult:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)
_generate_msg_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)

### Generating Services
_generate_srv_cpp(hrs_project
  "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
)

### Generating Module File
_generate_module_cpp(hrs_project
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hrs_project_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hrs_project_generate_messages hrs_project_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_cpp _hrs_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrs_project_gencpp)
add_dependencies(hrs_project_gencpp hrs_project_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrs_project_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)
_generate_msg_eus(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)

### Generating Services
_generate_srv_eus(hrs_project
  "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
)

### Generating Module File
_generate_module_eus(hrs_project
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hrs_project_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hrs_project_generate_messages hrs_project_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_eus _hrs_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrs_project_geneus)
add_dependencies(hrs_project_geneus hrs_project_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrs_project_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)
_generate_msg_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)

### Generating Services
_generate_srv_lisp(hrs_project
  "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
)

### Generating Module File
_generate_module_lisp(hrs_project
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hrs_project_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hrs_project_generate_messages hrs_project_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_lisp _hrs_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrs_project_genlisp)
add_dependencies(hrs_project_genlisp hrs_project_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrs_project_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)
_generate_msg_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)

### Generating Services
_generate_srv_nodejs(hrs_project
  "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
)

### Generating Module File
_generate_module_nodejs(hrs_project
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hrs_project_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hrs_project_generate_messages hrs_project_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_nodejs _hrs_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrs_project_gennodejs)
add_dependencies(hrs_project_gennodejs hrs_project_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrs_project_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)
_generate_msg_py(hrs_project
  "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)

### Generating Services
_generate_srv_py(hrs_project
  "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
)

### Generating Module File
_generate_module_py(hrs_project
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hrs_project_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hrs_project_generate_messages hrs_project_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkFeedback.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkActionGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/BlinkAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SpeechWithFeedbackAction.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyGoal.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/src/hrs_project/srv/MoveJoints.srv" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nao_a/ros/hrs_project/devel/.private/hrs_project/share/hrs_project/msg/SetSpeechVocabularyActionResult.msg" NAME_WE)
add_dependencies(hrs_project_generate_messages_py _hrs_project_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hrs_project_genpy)
add_dependencies(hrs_project_genpy hrs_project_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hrs_project_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hrs_project
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hrs_project_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hrs_project_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hrs_project
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hrs_project_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hrs_project_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hrs_project
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hrs_project_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hrs_project_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hrs_project
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hrs_project_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hrs_project_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hrs_project
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hrs_project_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hrs_project_generate_messages_py std_msgs_generate_messages_py)
endif()
