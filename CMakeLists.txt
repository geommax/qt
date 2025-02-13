cmake_minimum_required(VERSION 3.5)

project(setup_test VERSION 0.1 LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Widgets REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Widgets REQUIRED)
find_package(Qt5 REQUIRED COMPONENTS Core Sql)

if (CMAKE_SYSTEM_NAME STREQUAL "Emscripten")
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
    set(WASM ON)
endif()


set(PROJECT_SOURCES
        main.cpp
        mainwindow.cpp
        mainwindow.h
        mainwindow.ui
        sources/sql_data_manager.cpp
        headers/sql_data_manager.h
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(setup_test
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
    )
else()
    if(ANDROID)
        add_library(setup_test SHARED
            ${PROJECT_SOURCES}
        )
    else()
        add_executable(setup_test
            ${PROJECT_SOURCES}
        )
    endif()
endif()


target_link_libraries(setup_test PRIVATE Qt${QT_VERSION_MAJOR}::Widgets)
target_link_libraries(setup_test PRIVATE Qt5::Sql)


set_target_properties(setup_test PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# WebAssembly-specific settings
if (WASM)
    set_target_properties(MyQtWebApp PROPERTIES
        LINK_FLAGS "-sUSE_WEBGL2=1 -sUSE_SDL=2 -sASYNCIFY"
    )   
endif()

if(QT_VERSION_MAJOR EQUAL 6)
    qt_finalize_executable(setup_test)
endif()

