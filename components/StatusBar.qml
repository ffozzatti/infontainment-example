import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: statusBar
    height: 50
    anchors {
        left: parent.left
        top: parent.top
        right: parent.right
    }
    color: Qt.rgba(0,0,0,0)

    RowLayout {
        id: buttonRow
        height: statusBar.height
        width: statusBar.width / 4
        spacing: 0
        anchors {
            left: statusBar.left
            top: statusBar.top
        }

        Button {
            id: backButton
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width / 3
            text: "Back"
        }

        Button {
            id: homeButton
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width / 3
            text: "Home"
            onClicked: mainLoader.source = "./components/StackViewPage.qml"
        }

        Button {
            id: favButton
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width / 3
            text: "Fav"
        }
    }

    Text {
        id: statusText
        anchors{
            top: parent.top
            right: parent.right
            rightMargin: 20
        }
        height: parent.height
        width: parent.width / 4
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 20
        color: "white"
        text: "21F 12:55 PM "

    }
}
