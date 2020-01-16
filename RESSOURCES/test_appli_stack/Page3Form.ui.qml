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

    TextField {
        id: textFieldCommentaire
        x: 139
        y: 98
        text: qsTr("")
    }

    Text {
        id: element1
        x: 9
        y: 261
        text: qsTr("Prendre photo de l'anomalie")
        font.pixelSize: 12
    }

    Button {
        id: buttonPhoto
        x: 170
        y: 249
        width: 169
        height: 40
        text: qsTr("Button photo")
    }
}
