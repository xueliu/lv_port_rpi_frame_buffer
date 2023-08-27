Include(FetchContent)

FetchContent_Declare(
        lv_drivers
        GIT_REPOSITORY https://github.com/lvgl/lv_drivers.git
        GIT_TAG        master
)

FetchContent_MakeAvailable(lv_drivers)
