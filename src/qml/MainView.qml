import QtQuick 2.15

Item {
    Loader {
        anchors.fill: parent
        source: {
            return "TestCameraView.qml"
        }
    }
}
