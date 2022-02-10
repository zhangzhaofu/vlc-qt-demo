#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <VLCQtCore/Common.h>
#include <VLCQtQml/QmlSource.h>
#include <VLCQtCore/TrackModel.h>
#include <VLCQtQml/Qml.h>
#include <VLCQtQml/QmlVideoObject.h>
#include <VLCQtCore/MediaPlayer.h>
#include <VLCQtQml/QmlPlayer.h>
#include <VLCQtQml/QmlVideoOutput.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    VlcCommon::setPluginPath(app.applicationDirPath() + "/plugins");
    qmlRegisterUncreatableType<Vlc>("Vlc", 1, 1, "Vlc", QStringLiteral("Vlc cannot be instantiated directly"));
    qmlRegisterUncreatableType<VlcQmlSource>("VlcSource", 1, 1, "VlcSource", QStringLiteral("VlcQmlSource cannot be instantiated directly"));
    qmlRegisterUncreatableType<VlcTrackModel>("VlcTrackModel", 1, 1, "VlcTrackModel", QStringLiteral("VlcTrackModel cannot be instantiated directly"));
    qmlRegisterType<VlcQmlVideoOutput>("VlcVideoOutput", 1, 1, "VlcVideoOutput");
    qmlRegisterType<VlcQmlPlayer>("VlcPlayer", 1, 1, "VlcPlayer");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
