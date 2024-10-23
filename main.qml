import QtQuick 2.15
import QtQuick.Controls 2.15
import Controls 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "QML modules example"

    MyButton {
        anchors.centerIn: parent
    }
}
