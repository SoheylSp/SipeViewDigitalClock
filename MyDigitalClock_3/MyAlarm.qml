import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{

    id                  : myWorldclock
    anchors.fill        : parent


    //ColumnLayout for Devide page

    ColumnLayout{

        anchors.fill: parent
        spacing: 0

       //Top Rectangle contain header

        Rectangle{

            Layout.fillWidth        : true
            Layout.preferredHeight  : parent.height * 0.3

            Header{

                text:"Alarm"
            }

        }

        //Mid Rectangle

        Rectangle{
            Layout.fillWidth        : true
            Layout.preferredHeight  : parent.height * 0.55
        }

        //Bottom Rectangle

        Rectangle{

            Layout.fillWidth        : true
            Layout.fillHeight       : true



        }

    }
}
