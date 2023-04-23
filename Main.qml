import QtQuick
import QtQuick.Window
import './components'

Window {
    id: root
    width: 1024
    height: 680
    visible: true
    title: qsTr("Infontaiment Example")

    Image {
        id: backgroudImage
        anchors.fill: root
        source: 'qrc:/assets/bg.jpg'
    }

    StatusBar {
        id: statusBar
    }

    Loader {
        id: mainLoader
        anchors{
            left: parent.left
            right: parent.right
            top: statusBar.bottom
            bottom: parent.bottom
        }
        source: "./components/StackViewPage.qml"
    }
}
