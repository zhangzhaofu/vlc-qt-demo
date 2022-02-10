import QtQuick 2.15
import QtQuick.Layouts 1.15

import VlcPlayer 1.1
import Vlc 1.1
import VlcVideoOutput 1.1

Item {
    RowLayout {
        anchors.fill: parent
        VlcVideoOutput {
            Layout.fillWidth: true
            Layout.fillHeight: true
            source :
                VlcPlayer {
                    url : "rtsp://admin:@192.168.31.1:554/ch1/main/av_stream"
                }
        }

        VlcVideoOutput {
            Layout.fillWidth: true
            Layout.fillHeight: true
            source :
                VlcPlayer {
                    url : "rtsp://admin:@192.168.31.29:554/ch1/main/av_stream"
                }
        }
    }
}
