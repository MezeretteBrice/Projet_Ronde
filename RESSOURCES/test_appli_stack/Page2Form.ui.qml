import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: 350
    height: 450

    title: qsTr("Page 2")

    Button {
        id: buttonAnomalie
        x: 151
        y: 38
        width: 188
        height: 40
        text: qsTr("Anomalie")
    }

    Button {
        id: buttonFinRonde
        x: 151
        y: 374
        width: 188
        height: 40
        text: qsTr("Fin de ronde")
    }

    GroupBox {
        id: groupBox
        x: 9
        y: 14
        width: 136
        height: 400
        title: qsTr("Lieux à rejoindre")
    }

    GroupBox {
        id: scannerPointeau
        x: 151
        y: 94
        width: 188
        height: 260
        title: qsTr("Scanner pointeau")

        Button {
            id: buttonScanner
            x: 14
            y: 172
            text: qsTr("Scanner un pointeau")
        }

        RoundButton {
            id: roundButton
            x: 41
            y: 38
            width: 83
            height: 89
            text: "+"
        }

        Label {
            id: labelLieuxScanner
            x: 45
            y: 147
            width: 79
            height: 20
            text: qsTr("Lieux scanné")
        }
    }
}
