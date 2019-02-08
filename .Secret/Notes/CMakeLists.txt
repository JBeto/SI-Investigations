set (CMAKE_CXX_STANDARD 17)
project (notes)
add_executable(notes notes.cpp game.cpp)
target_link_libraries(${PROJECT_NAME} stdc++fs)