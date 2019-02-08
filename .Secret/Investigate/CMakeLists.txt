set (CMAKE_CXX_STANDARD 17)
project (investigate)
add_executable(investigate investigate.cpp game.cpp)
target_link_libraries(${PROJECT_NAME} stdc++fs)