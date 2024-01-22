import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

// The ListView which defined & customized for the  WorldClockListView

ListView {

    width       : parent.width
    height      : parent.height
    anchors.fill: parent

    model:City

    delegate:Rectangle{

       width: parent.width
       height: Math.max(parent.width,height)/4.5;
       //border:true
       border.width: 0.20
       border.color: "black"
       antialiasing: true
       clip: true
       Text{

           //anchors.centerIn : parent
           text               : modelData   }
    }
    spacing: 1

}
