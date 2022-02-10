import QtQuick 2.15
import VlcPlayer 1.1
import Vlc 1.1
import VlcVideoOutput 1.1

Item {
    VlcVideoOutput {
        anchors.fill: parent
        source :
            VlcPlayer {
                url : "rtsp://admin:@192.168.31.29:554/ch1/main/av_stream"
            }
    }
}
