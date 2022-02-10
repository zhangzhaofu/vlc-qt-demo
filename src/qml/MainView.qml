import QtQuick 2.12

Item {
    Loader {
        anchors.fill: parent
        source: {
            return "TestCameraView.qml"
        }
    }
}
