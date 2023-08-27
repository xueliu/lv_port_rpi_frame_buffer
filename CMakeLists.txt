cmake_minimum_required(VERSION 3.12)

project(lv_port_rpi_frame_buffer)

include_directories(.)
#add_subdirectory(lvgl)
#add_subdirectory(lv_drivers)

include(extern/lvgl.cmake)
include(extern/lv_drivers.cmake)

add_executable( ${PROJECT_NAME} "" )

# Specify path to own LVGL config header
set(LV_CONF_PATH
        ${CMAKE_CURRENT_SOURCE_DIR}lv_conf.h
        CACHE STRING "" FORCE)

target_sources(
        ${PROJECT_NAME}
        PRIVATE
        main.c
        mouse_cursor_icon.c

        ./lv_conf.h
        ./lv_drv_conf.h
)

target_link_libraries(
        ${PROJECT_NAME}
        PRIVATE
        lvgl
        lvgl::examples
        lvgl::demos
        lvgl::drivers
)
