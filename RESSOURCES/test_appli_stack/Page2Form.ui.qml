import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: 350
    height: 600

    title: qsTr("Page 2")

    TextField {
        id: textFieldErreur
        x: 156
        y: 118
        width: 188
        height: 40
        text: qsTr("erreur de parcours")
    }

    Button {
        id: buttonAnomalie
        x: 156
        y: 250
        width: 188
        height: 40
        text: qsTr("Anomalie")
    }

    Button {
        id: buttonFinRonde
        x: 156
        y: 440
        width: 188
        height: 40
        text: qsTr("Fin de ronde")
    }

    GroupBox {
        id: groupBox
        x: 9
        y: 14
        width: 136
        height: 565
        title: qsTr("Lieux à rejoindre")

        Column {
            id: column
            width: 112
            height: 400

            Label {
                id: label
                text: qsTr("Label")
            }

            Label {
                id: label1
                text: qsTr("Label")
            }

            Label {
                id: label2
                text: qsTr("Label")
            }

            Label {
                id: label3
                text: qsTr("Label")
            }

            Label {
                id: label4
                text: qsTr("Label")
            }

            Label {
                id: label5
                text: qsTr("Label")
            }

            Label {
                id: label6
                text: qsTr("Label")
            }

            Label {
                id: label7
                text: qsTr("Label")
            }

            Label {
                id: label8
                text: qsTr("Label")
            }

            Label {
                id: label9
                text: qsTr("Label")
            }

            Label {
                id: label10
                text: qsTr("Label")
            }

            Label {
                id: label11
                text: qsTr("Label")
            }

            Label {
                id: label12
                text: qsTr("Label")
            }

            Label {
                id: label13
                text: qsTr("Label")
            }

            Label {
                id: label14
                text: qsTr("Label")
            }
        }
    }
}