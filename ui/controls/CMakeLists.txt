qt_add_qml_module(controls-module STATIC NO_PLUGIN
    URI Controls
    VERSION 1.0
    QML_FILES 
        MyButton.qml
    OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/Controls
)
add_library(my::controls-module ALIAS controls-module)
