set (CMAKE_CXX_STANDARD 17)
project (talkto)
add_executable(talkto talk.cpp game.cpp)
target_link_libraries(${PROJECT_NAME} stdc++fs)