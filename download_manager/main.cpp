#include "mainwindow.h"

#include <QApplication>

#include "managerclient.h"

int main(int argc, char *argv[])
{
    /*std::string url = "example.com";
    ManagerClient client;
    client.connect(url);
    client.check_ranges_existance();*/

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
