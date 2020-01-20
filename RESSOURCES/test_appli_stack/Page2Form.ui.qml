import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Page {
    width: 350
    height: 600

    title: qsTr("Page 2")

    Button {
        id: buttonAnomalie
        x: 151
        y: 58
        width: 188
        height: 40
        text: qsTr("Anomalie")
    }

    Button {
        id: buttonFinRonde
        x: 151
        y: 539
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

    GroupBox {
        id: scannerPointeau
        x: 151
        y: 167
        width: 188
        height: 260
        title: qsTr("Scanner pointeau")

        Button {
            id: buttonScanner
            x: 14
            y: 196
            text: qsTr("Scanner un Pointeau")
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
            text: qsTr("LieuxScanner")
        }
    }
}
