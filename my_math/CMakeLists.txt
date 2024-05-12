# add_library(my_math
# src/addition.cpp
# src/division.cpp)

# target_include_directories(my_math PUBLIC include)


add_library(my_math
src/addition.cpp
src/division.cpp)

#target_include_directories(my_math PUBLIC include)
target_include_directories( my_math PUBLIC
$<INSTALL_INTERFACE:include>
$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>)

install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/include/my_math/addition.h ${CMAKE_CURRENT_SOURCE_DIR}/include/my_math/division.h  DESTINATION ${CMAKE_INSTALL_PREFIX}/include/my_math)

install(TARGETS my_math EXPORT my_export DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/my_math)

install(EXPORT my_export FILE my_math-config.cmake DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/my_math)



# find_package(my_math)

# if(my_math_FOUND)
# 	message("my_math library found")
# 	add_executable(calc main.cpp)
# 	target_link_libraries(calc my_math)	
# else()
# 	message(FATAL_ERROR "my_math library not found")
# endif()
