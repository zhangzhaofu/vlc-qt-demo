import QtQuick
import QtQuick.Controls 2.2

ApplicationWindow {
    id: mainWindow
    visible: true
    title: qsTr("机器人地面控制软件")

    Component.onCompleted: {
        showMaximized()
    }

    Text {
        anchors.centerIn: parent
        text: qsTr("Hello world")
    }
}
