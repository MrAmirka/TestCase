import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Pairwise Tester")


    StackView{
        id:mainStack
        anchors.fill: parent

        UploadScreen{
            id:uploadScreen
        }
    }



}

