import QtQuick
import QtMultimedia

Item {
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
