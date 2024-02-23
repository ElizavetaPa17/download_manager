#include "createurldialog.h"

#include <QGridLayout>
#include <QMessageBox>

CreateURLDialog::CreateURLDialog(QWidget *parent, Qt::WindowFlags f)
    : QDialog(parent, f)
{
    setupDialog();
}

QString CreateURLDialog::getURL() {
    return url_;
}

void CreateURLDialog::setupDialog() {
    // setup UI
    this->setFixedWidth(300);

    urlEdit_.setPlaceholderText("URL:");
    okButton_.setText("Ok");
    cancelButton_.setText("Cancel");

    QGridLayout* gridLayout = new QGridLayout(this);
    gridLayout->addWidget(&urlEdit_, 0, 0, 1, 2);
    gridLayout->addWidget(&cancelButton_, 1, 0, 1, 1);
    gridLayout->addWidget(&okButton_, 1, 1, 1, 1);

    this->setLayout(gridLayout);

    // setup connection
    connect(&okButton_, &QPushButton::clicked, this, &CreateURLDialog::on_okButton_clicked);
    connect(&cancelButton_, &QPushButton::clicked, this, &CreateURLDialog::on_cancelButton_clicked);
}

void CreateURLDialog::on_okButton_clicked() {
    if (urlEdit_.text().isEmpty()) {
        QMessageBox::warning(nullptr, "Empty URL", "Enter URL to continue.", "Ok");
    } else {
        url_ = urlEdit_.text();
        accept();
    }
}

void CreateURLDialog::on_cancelButton_clicked() {
    reject();
}
