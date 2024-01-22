import QtQuick 2.0

Rectangle {

    id          : header
    width       : parent.width
    height      : parent.height
    anchors.fill: parent

    Text{
        id:headerText
        anchors.centerIn: parent
        font.pointSize: 40
        font.family: "winterSignature"
    }

    property string text: ""

    onTextChanged: {headerText.text=text}

}
