import QtQuick
import QtQuick.Controls
import QtMultimedia

ApplicationWindow {
    id: mainWindow
    visible: true
    title: qsTr("机器人地面控制软件")

    Component.onCompleted: {
        showMaximized()
    }

    MainView {
        id: mainView
        anchors.fill: parent
    }
}
