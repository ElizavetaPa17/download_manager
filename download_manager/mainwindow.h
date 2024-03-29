#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#include "managerclient.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_addButton_clicked();

private:
    Ui::MainWindow *ui;

    ManagerClient manager_client_;
};
#endif // MAINWINDOW_H
