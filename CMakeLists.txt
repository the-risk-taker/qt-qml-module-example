cmake_minimum_required(VERSION 3.20)
project(QmlModule)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 COMPONENTS Core Quick REQUIRED)
qt_standard_project_setup(REQUIRES 6.8)

add_subdirectory(ui/controls)

qt_add_executable(my-app
    main.cpp
)

qt_add_qml_module(main-qml-module STATIC NO_PLUGIN
    URI MainQml
    VERSION 1.0
    QML_FILES
        Main.qml # NOTE: Must be passed here from capital letter when using QQmlApplicationEngine::loadFromModule() (or file name must be from capital letter)
    OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/MainQml
)
add_library(my::main-qml-module ALIAS main-qml-module)

target_link_libraries(my-app
    PRIVATE Qt6::Core Qt6::Quick my::main-qml-module my::controls-module
)

add_custom_target(run-app
    COMMAND $<TARGET_FILE:my-app>
    DEPENDS my-app
)
