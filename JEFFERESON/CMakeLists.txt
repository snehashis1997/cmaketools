cmake_minimum_required(VERSION 3.0.0)

project(jeffereson_project VERSION 1.0.0)

add_executable(${PROJECT_NAME}
main.cpp)

# message("${PROJECT_NAME}")
set(PROJECT_NAME_FOO1 "HELLO WORLD")
set(PROJECT_NAME_FOO2 "HELLO WORLD")
set(PROJECT_NAME_FOO3 "HELLO WORLD")

function (print)
# message(${${var}}, ${ARGN})
# message("${ARGN}")
    foreach (var ${ARGN})
        message("${var} == ${${var}}")
    endforeach()
    set(PROJECT_NAME_FOO1 "Hello2")
    message("${PROJECT_NAME_FOO1} === ")
    message("hellow129 ------ $ENV{${PROJECT_NAME_FOO1}} === ")
endfunction()

print(PROJECT_NAME_FOO1 PROJECT_NAME_FOO2 PROJECT_NAME_FOO3)
message("${PROJECT_NAME_FOO1} === ")
# print(PROJECT_NAME_FOO)