Include(FetchContent)

FetchContent_Declare(
        lvgl
        GIT_REPOSITORY https://github.com/lvgl/lvgl.git
        GIT_TAG        v8.3.9
)

FetchContent_MakeAvailable(lvgl)
