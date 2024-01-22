
import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12


//Applications Root window

ApplicationWindow {

    id       : rootWindow

    visible     : true
    width       : 330
    height      : 660
    title: qsTr("Clock")


    //SwipeView for severalPages

    SwipeView{


        id:view

        currentIndex        : 0
        anchors.fill        : parent

        //WorldClock's page

        Rectangle{
            id:firstPage
            MyWorldClock{}
        }

        //Alram's page

        Rectangle{
            id:secondPage
            MyAlarm{}
        }

        //Cornometer page

        Rectangle{
            id:thirdPage
            MyCornometer{}
        }

        //StopWatch page

        Rectangle{
            id:forthPage
            MyStopWatch{}
        }
    }

    PageIndicator{

        id                      :indicator

        count                   : view.count
        currentIndex            : view.currentIndex
        anchors.bottom          : view.bottom
        anchors.horizontalCenter: parent.horizontalCenter

    }


}
