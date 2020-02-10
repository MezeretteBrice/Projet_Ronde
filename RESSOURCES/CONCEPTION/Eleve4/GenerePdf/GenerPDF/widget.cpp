#include "widget.h"
#include "ui_widget.h"
#include <QPdfWriter>
#include <QPainter>
#include <QPrinter>
#include <QFileDialog>
#include <QDebug>
#include <QPixmap>
#include <QLabel>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
}

Widget::~Widget()
{
    delete ui;
}

void Widget::on_TestPDF_clicked()
{
    QString nomFichier = QFileDialog::getSaveFileName(0, QString::fromUtf8("Générer PDF"), QCoreApplication::applicationDirPath(), "*.pdf");
    QString message;

    QPixmap leLogo("/home/USERS/ELEVES/SNIR2018/achevrel/Projet_Snir/Projet_Ronde/Projet_code/GenerePdf/Barbe_devaux.jpeg");
    QLabel* m_label = new QLabel();
    m_label->setPixmap(leLogo);

    message = ui->textPdf->toPlainText();

    if (!nomFichier.isEmpty())
    {
        if (QFileInfo(nomFichier).suffix().isEmpty())
        {
            nomFichier.append(".pdf");
        }

        QPrinter printer(QPrinter::HighResolution);
        printer.setDocName("Rapport_de_ronde_pdf_test");
        printer.setOutputFormat(QPrinter::PdfFormat);
        printer.setOutputFileName(nomFichier);
        printer.setOrientation(QPrinter::Portrait);
        printer.setPaperSize(QPrinter::A4);
        printer.setPageSize(QPrinter::A4);
        printer.setPageMargins(5,5,5,5,QPrinter::Millimeter);

        qDebug() << "Page px :" << printer.pageRect() << printer.paperRect();
        qDebug() << "Page mm :" << printer.pageRect(QPrinter::Millimeter) << printer.paperRect(QPrinter::Millimeter);
        qreal left, top, right, bottom;
        printer.getPageMargins(&left, &top, &right, &bottom, QPrinter::DevicePixel);
        qDebug() << "Marges px :" << left << top << right << bottom;
        printer.getPageMargins(&left, &top, &right, &bottom, QPrinter::Millimeter);
        qDebug() << "Marges mm :" << left << top << right << bottom;

        QPainter painter(&printer);
        painter.setPen(Qt::blue);
        painter.setFont(QFont("Arial"));
        // Pour écrire du texte
        painter.drawText(0,printer.pageRect().y()*2, message);
        painter.setPen(Qt::green);
        painter.drawText(0,printer.pageRect().y()*3, message);


        // Une nouvelle page
        printer.newPage();
        painter.setPen(Qt::red);
        painter.setFont(QFont("Arial"));
        painter.drawText(0, printer.pageRect().y()*3, message);
    }
}
