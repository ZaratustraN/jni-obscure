cmake_minimum_required(VERSION 3.4.1)

include_directories(
       src/main/cpp
)

add_library(native-lib SHARED src/main/cpp/obscure_jni.cpp src/main/cpp/not_obscure_jni.cpp src/main/cpp/md5.c)

find_library(log-lib log)

target_link_libraries(native-lib ${log-lib})