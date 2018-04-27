#include "mainwindow.h"
#include <QApplication>
#include <QFont>
#include <QFile>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);
    QFont font;
    font.setFamily("Microsoft YaHei");
    font.setPixelSize(12);
    app.setFont(font);
    QFile file(":/qss/psblack.css");
    if(file.open(QIODevice::ReadOnly)){
        app.setStyleSheet(file.readAll());
    }
    MainWindow w;
    w.setWindowTitle(QStringLiteral("寒山-居士 制作 QQ群:312125701"));
    w.resize(600,800);
    w.show();
    return app.exec();
}
