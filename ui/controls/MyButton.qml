import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 100
    height: 100
    color: "transparent"

    Button {
        anchors.fill: parent
        text: "Button"
        onClicked: console.log("Button clicked!")
    }
}
