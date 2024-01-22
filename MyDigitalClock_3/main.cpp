#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QTime>
#include <QTimeZone>
#include <QDateTime>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QStringList *cityZero = new QStringList();

    cityZero    ->append("Tehran")      ;
    //cityZero    ->append(QTimeZone::utc().)   ;

    engine.rootContext()->setContextProperty("City",*cityZero) ;

   /* QStringList *cityOne  = new QStringList() ;

    QTimeZone parisTimeZone("Europe/Paris");
    QDateTime parisDateTime = QDateTime::currentDateTime().toTimeZone(parisTimeZone);

   cityOne->append("Paris") ;
   cityOne->append(parisDateTime.toString());

   */
  // engine.rootContext()->setContextProperty("City",*cityOne) ;



    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
