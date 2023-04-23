cmake_minimum_required(VERSION 3.16)

project(InfontaimentExample VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt6_add_resources(QRC_FILES resources.qrc)

qt_standard_project_setup()

qt_add_executable(appInfontaimentExample
    main.cpp
    ${QRC_FILES}
)

qt_add_qml_module(appInfontaimentExample
    URI InfontaimentExample
    VERSION 1.0
    QML_FILES
        Main.qml
        components/StatusBar.qml
        components/StackViewPage.qml
        components/GridOne.qml
        components/GridTwo.qml
        components/StationPage.qml
)

set_target_properties(appInfontaimentExample PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appInfontaimentExample
    PRIVATE Qt6::Quick
)

install(TARGETS appInfontaimentExample
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
