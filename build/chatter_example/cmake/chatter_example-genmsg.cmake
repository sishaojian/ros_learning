# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "chatter_example: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ichatter_example:/home/ssj/ROS/src/chatter_example/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(chatter_example_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssj/ROS/src/chatter_example/msg/Person.msg" NAME_WE)
add_custom_target(_chatter_example_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chatter_example" "/home/ssj/ROS/src/chatter_example/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(chatter_example
  "/home/ssj/ROS/src/chatter_example/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatter_example
)

### Generating Services

### Generating Module File
_generate_module_cpp(chatter_example
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatter_example
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(chatter_example_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(chatter_example_generate_messages chatter_example_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ROS/src/chatter_example/msg/Person.msg" NAME_WE)
add_dependencies(chatter_example_generate_messages_cpp _chatter_example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatter_example_gencpp)
add_dependencies(chatter_example_gencpp chatter_example_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatter_example_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(chatter_example
  "/home/ssj/ROS/src/chatter_example/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatter_example
)

### Generating Services

### Generating Module File
_generate_module_eus(chatter_example
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatter_example
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(chatter_example_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(chatter_example_generate_messages chatter_example_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ROS/src/chatter_example/msg/Person.msg" NAME_WE)
add_dependencies(chatter_example_generate_messages_eus _chatter_example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatter_example_geneus)
add_dependencies(chatter_example_geneus chatter_example_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatter_example_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(chatter_example
  "/home/ssj/ROS/src/chatter_example/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatter_example
)

### Generating Services

### Generating Module File
_generate_module_lisp(chatter_example
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatter_example
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(chatter_example_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(chatter_example_generate_messages chatter_example_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ROS/src/chatter_example/msg/Person.msg" NAME_WE)
add_dependencies(chatter_example_generate_messages_lisp _chatter_example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatter_example_genlisp)
add_dependencies(chatter_example_genlisp chatter_example_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatter_example_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(chatter_example
  "/home/ssj/ROS/src/chatter_example/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatter_example
)

### Generating Services

### Generating Module File
_generate_module_nodejs(chatter_example
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatter_example
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(chatter_example_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(chatter_example_generate_messages chatter_example_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ROS/src/chatter_example/msg/Person.msg" NAME_WE)
add_dependencies(chatter_example_generate_messages_nodejs _chatter_example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatter_example_gennodejs)
add_dependencies(chatter_example_gennodejs chatter_example_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatter_example_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(chatter_example
  "/home/ssj/ROS/src/chatter_example/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatter_example
)

### Generating Services

### Generating Module File
_generate_module_py(chatter_example
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatter_example
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(chatter_example_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(chatter_example_generate_messages chatter_example_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssj/ROS/src/chatter_example/msg/Person.msg" NAME_WE)
add_dependencies(chatter_example_generate_messages_py _chatter_example_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatter_example_genpy)
add_dependencies(chatter_example_genpy chatter_example_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatter_example_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatter_example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatter_example
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(chatter_example_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatter_example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatter_example
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(chatter_example_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatter_example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatter_example
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(chatter_example_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatter_example)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatter_example
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(chatter_example_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatter_example)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatter_example\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatter_example
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(chatter_example_generate_messages_py std_msgs_generate_messages_py)
endif()
