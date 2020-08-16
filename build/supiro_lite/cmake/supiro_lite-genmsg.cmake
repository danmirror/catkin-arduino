# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "supiro_lite: 3 messages, 0 services")

set(MSG_I_FLAGS "-Isupiro_lite:/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(supiro_lite_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" NAME_WE)
add_custom_target(_supiro_lite_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "supiro_lite" "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" ""
)

get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" NAME_WE)
add_custom_target(_supiro_lite_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "supiro_lite" "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" ""
)

get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" NAME_WE)
add_custom_target(_supiro_lite_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "supiro_lite" "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/supiro_lite
)
_generate_msg_cpp(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/supiro_lite
)
_generate_msg_cpp(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/supiro_lite
)

### Generating Services

### Generating Module File
_generate_module_cpp(supiro_lite
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/supiro_lite
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(supiro_lite_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(supiro_lite_generate_messages supiro_lite_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_cpp _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_cpp _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_cpp _supiro_lite_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(supiro_lite_gencpp)
add_dependencies(supiro_lite_gencpp supiro_lite_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS supiro_lite_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/supiro_lite
)
_generate_msg_eus(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/supiro_lite
)
_generate_msg_eus(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/supiro_lite
)

### Generating Services

### Generating Module File
_generate_module_eus(supiro_lite
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/supiro_lite
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(supiro_lite_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(supiro_lite_generate_messages supiro_lite_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_eus _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_eus _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_eus _supiro_lite_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(supiro_lite_geneus)
add_dependencies(supiro_lite_geneus supiro_lite_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS supiro_lite_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/supiro_lite
)
_generate_msg_lisp(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/supiro_lite
)
_generate_msg_lisp(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/supiro_lite
)

### Generating Services

### Generating Module File
_generate_module_lisp(supiro_lite
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/supiro_lite
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(supiro_lite_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(supiro_lite_generate_messages supiro_lite_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_lisp _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_lisp _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_lisp _supiro_lite_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(supiro_lite_genlisp)
add_dependencies(supiro_lite_genlisp supiro_lite_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS supiro_lite_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/supiro_lite
)
_generate_msg_nodejs(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/supiro_lite
)
_generate_msg_nodejs(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/supiro_lite
)

### Generating Services

### Generating Module File
_generate_module_nodejs(supiro_lite
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/supiro_lite
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(supiro_lite_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(supiro_lite_generate_messages supiro_lite_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_nodejs _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_nodejs _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_nodejs _supiro_lite_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(supiro_lite_gennodejs)
add_dependencies(supiro_lite_gennodejs supiro_lite_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS supiro_lite_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite
)
_generate_msg_py(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite
)
_generate_msg_py(supiro_lite
  "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite
)

### Generating Services

### Generating Module File
_generate_module_py(supiro_lite
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(supiro_lite_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(supiro_lite_generate_messages supiro_lite_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/motorpower.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_py _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/sonar.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_py _supiro_lite_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/danu/catkin_custom/catkin_arduino/src/supiro_lite/msg/encoder.msg" NAME_WE)
add_dependencies(supiro_lite_generate_messages_py _supiro_lite_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(supiro_lite_genpy)
add_dependencies(supiro_lite_genpy supiro_lite_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS supiro_lite_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/supiro_lite)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/supiro_lite
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(supiro_lite_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/supiro_lite)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/supiro_lite
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(supiro_lite_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/supiro_lite)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/supiro_lite
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(supiro_lite_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/supiro_lite)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/supiro_lite
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(supiro_lite_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/supiro_lite
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(supiro_lite_generate_messages_py std_msgs_generate_messages_py)
endif()
