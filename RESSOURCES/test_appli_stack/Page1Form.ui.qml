import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 350
    height: 400
    property alias buttonSelecRonde: buttonSelecRonde
    property alias comboBoxSelecRonde: comboBoxSelecRonde

    title: qsTr("Séléctionner une ronde")

    ComboBox {
        id: comboBoxSelecRonde
        x: 55
        y: 71
        width: 240
        height: 68
        displayText: "Séléctionner une ronde"
        textRole: ""
        //currentIndex: 1
        model: ["A", "B", "C", "D"]
    }

    Button {
        id: buttonSelecRonde
        x: 55
        y: 304
        width: 240
        height: 60
        text: qsTr("Selectionner ronde")
    }
}