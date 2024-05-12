cmake_minimum_required(VERSION 3.0.0)

project(Calculator_Project VERSION 1.0.0)


add_subdirectory(my_math)

add_subdirectory(my_print)


add_executable(calculator
main.cpp)


target_link_libraries(calculator PRIVATE my_math  my_print)

#message("Hello World")

set(NAME BOB Smith)
set(HEIGHT 190)

message("Hello, my name is ${NAME}, my height is ${HEIGHT}cm and my age is ${AGE} years")


set(VAR aa bb cc)
#set(VAR aa;bb;cc)
#set(VAR "aa" "bb" "cc")
#set(VAR "aa bb cc")
#set(VAR "aa;bb;cc")


message(Unquoted: ${VAR})

message(Quoted: "${VAR}")

set(NAME Alice)

set(Alice Bob)

set(NAMEAliceBob Charlie)

#message(${${NAME}})

#message(${NAME ${NAME} ${${NAME}}})

message(${NAME${NAME}${${NAME}}})
message("CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}")

# # headers files in /usr/local/include
# install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/include/my_math/addition.h ${CMAKE_CURRENT_SOURCE_DIR}/include/my_math/division.h DESTINATION ${CMAKE_INSTALL_PREFIX}/include/my_math)
# install(TARGETS my_math EXPORTS my_export DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/my_math)
# #message("NAME ${NAME} ${${NAME}}")


