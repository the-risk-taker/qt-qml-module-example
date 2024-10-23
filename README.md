# Example of using QML Modules with `qt_add_qml_module()`

> *"This command defines a QML module that can consist of C++ sources, .qml files, or both. It ensures that essential module details are provided and that they are consistent. It also sets up and coordinates things like cached compilation of .qml sources, resource embedding, linting checks, and auto-generation of some key module files."* [[1]](https://doc.qt.io/qt-6/qt-add-qml-module.html#description)

## Description

In this example, the [qt_add_qml_module()](https://doc.qt.io/qt-6/qt-add-qml-module.html) is used to make two modules: the module with `main.qml` and the module with `Controls`. Controls is just an umbrella for project controls - here just a dummy button. Then those modules are linked into the main executable.

To load the module containing `main.qml`, use `QmlApplicationEngine::loadFromModule()` as shown in `main.cpp`.

For both modules, only static libraries and no plugins are built by adding `STATIC` and `NO_PLUGIN` in `qt_add_qml_module()`. For Qt 6.8, all CMake policies are fulfilled (`OUTPUT_DIRECTORY`).

> [!TIP]  
> Check this Qt [blog](https://www.qt.io/blog/whats-new-for-qml-modules-in-6.5) about QML Modules.

> [!IMPORTANT]  
> The call to `qt_standard_project_setup()` is really important to work with `STATIC` and `NO_PLUGIN`.
