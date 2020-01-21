import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 350
    height: 400

    title: qsTr("Page 3")

    Text {
        id: element
        x: 9
        y: 107
        width: 95
        height: 22
        text: qsTr("Commentaire")
        font.pixelSize: 12
    }

    Button {
        id: buttonPhoto
        x: 9
        y: 249
        width: 330
        height: 40
        text: qsTr("Prendre une photo")
    }

    GroupBox {
        id: groupBox
        x: 88
        y: 43
        width: 251
        height: 168
        title: qsTr("")

        TextArea {
            id: textArea
            x: -12
            y: -12
            width: 251
            height: 168
        }
    }

    Button {
        id: buttonPhoto1
        x: 9
        y: 339
        width: 330
        height: 40
        text: qsTr("Valider l'anomalie")
    }
}
