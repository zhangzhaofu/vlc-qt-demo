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

    MediaPlayer {
        id: mediaplayer
        source: "rtsp://admin:@192.168.31.1:554/ch1/main/av_stream"
        videoOutput: videoOutput
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        onPressed: mediaplayer.play();
    }
}
