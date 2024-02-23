#ifndef CREATEURLDIALOG_H
#define CREATEURLDIALOG_H

#include <QDialog>
#include <QLineEdit>
#include <QPushButton>

class CreateURLDialog : public QDialog
{
    Q_OBJECT
public:
    CreateURLDialog(QWidget *parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags());

    QString getURL();

public slots:
    void on_okButton_clicked();
    void on_cancelButton_clicked();

private:
    QLineEdit   urlEdit_;
    QPushButton okButton_;
    QPushButton cancelButton_;
    QString     url_;

    void setupDialog();
};

#endif // CREATEURLDIALOG_H
