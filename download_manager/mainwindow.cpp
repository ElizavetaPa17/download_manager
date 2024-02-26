#include "mainwindow.h"
#include "./ui_mainwindow.h"

#include "createurldialog.h"


#include <QMessageBox>
#include <QFileDialog>
#include <memory>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_addButton_clicked()
{
    auto pCreateUrlDialog = std::make_unique<CreateURLDialog>();
    if (pCreateUrlDialog->exec() == QDialog::Accepted) {
        if (!manager_client_.connect(pCreateUrlDialog->getURL().toStdString())) {
            QMessageBox::warning(nullptr, "Invalid URL",
                                 "Your URL is invalid. Check it and try again.", "Ok");
        } else {
            QString filename = QFileDialog::getSaveFileName(nullptr, "Choose File to store");
            if (filename.isEmpty()) {
                return;
            }

            manager_client_.start_downloading(filename.toStdString());
        }
    }
}

