import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

Page {
    width: 350
    height: 400
    property alias roundButton: roundButton

    title: qsTr("NFC")

    Label {
        width: 84
        height: 24
        text: qsTr("Scanner un code NFC")
        anchors.verticalCenterOffset: 128
        anchors.horizontalCenterOffset: -30
        font.pointSize: 20
        anchors.centerIn: parent
    }

    Image {
        id: image
        visible: true
        x: 175
        y: 70
        width: 150
        height: 205
        z: 1
        source: "Logo_NFC.jpg"
        fillMode: Image.PreserveAspectFit

        RoundButton {
            id: roundButton
            x: 0
            y: 83
        }
    }

    Image {
        id: image1
        visible: true
        x: 63
        y: 70
        width: 150
        height: 205
        rotation: -180
        source: "Logo_NFC.jpg"
        fillMode: Image.PreserveAspectFit
    }
}
