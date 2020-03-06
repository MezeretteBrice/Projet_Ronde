#include "ihmstatistiques.h"
#include "ui_ihmstatistiques.h"

IHMStatistiques::IHMStatistiques(AccesMySQL &mySqlBdd, QWidget *parent):
  QWidget(parent),
  ui(new Ui::IHMStatistiques),
  bdd(mySqlBdd)
{
    ui->setupUi(this);

    ui->comboBoxFiltreAgent->setEnabled(true);
    ui->comboBoxFiltreNomRonde->setEnabled(true);
    ui->pushButtonDate1->setEnabled(true);
    ui->pushButtonDate2->setEnabled(true);
    ui->radioButton1FiltreDate->setEnabled(true);
    ui->radioButton2FiltreDate->setEnabled(true);
    ui->radioButton3FiltreDate->setEnabled(true);
    ui->radioButton4FiltreDate->setEnabled(true);
}

IHMStatistiques::~IHMStatistiques()
{

}
