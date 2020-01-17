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
    }

    Button {
        id: buttonAnomalie
        x: 156
        y: 277
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
    }
}
