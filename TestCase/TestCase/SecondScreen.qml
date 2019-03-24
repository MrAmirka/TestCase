import QtQuick 2.0
import QtQuick 2.12

Item {
    width: 1920
    height: 1080
    anchors.fill: parent


    Image{
        id: background
        fillMode: Image.PreserveAspectCrop
        source: "images/saturn.jpg"
        anchors.fill: parent
    }

    FontLoader
    {
        id: robotoLight
        source: "fonts/Engravers Gothic BT.ttf"
    }


    Text//Сохранить в текстовый
    {
        x: 0.43*parent.width
        y: 0.8*parent.height
        text: "Save to .txt file"
        font.family: robotoLight.name
        font.weight: Font.Light   // this is necessary or else it'll look like Roboto-Bold

        color: "white"
        font.pointSize: 24

        MouseArea{
            id:mouseArea
            hoverEnabled: true
            anchors.fill:parent
            onEntered: {parent.scale = 1.2; animation.pause()}
            onExited: {parent.scale = 1;}
            onPressed: {parent.scale = 0.9;
                }
            onReleased: {parent.scale = 1;}

            onClicked: {mainStack.push("GamingSwipeMenu.qml");
                mouseArea.destroy()}

        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }

        SequentialAnimation on scale{
            id:animation
            running: true
            NumberAnimation { from:1; to: 1.1; duration: 1250 }
            NumberAnimation { from:1.1; to: 1; duration: 1500 }
            NumberAnimation { from:1; to: 1.1; duration: 250 }
            NumberAnimation { from:1.1; to: 1; duration: 500 }
            loops:Animation.Infinite
        }
    }


    Text//Тест кейсы
    {
        x: parent.width/2 - width - parent.width/2*0.015
        y: 0.09*parent.height
        text: "Test cases"
        font.family: robotoLight.name
        font.weight: Font.Light   // this is necessary or else it'll look like Roboto-Bold

        color: "white"
        font.pointSize: 24

        MouseArea{
            id:mouseArea2
            hoverEnabled: false
            anchors.fill:parent
            onEntered: {parent.scale = 1.2; animation.pause()}
            onExited: {parent.scale = 1;}
            onPressed: {parent.scale = 0.9;
                animation.pause()}
            onReleased: {parent.scale = 1;}

            onClicked: {mainStack.push("GamingSwipeMenu.qml");
                mouseArea.destroy()}

        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

    Text//Автотесты
    {
        x: parent.width/2 + parent.width/2*0.015
        y: 0.09*parent.height
        text: "Autotesting"
        font.family: robotoLight.name
        font.weight: Font.Light   // this is necessary or else it'll look like Roboto-Bold

        color: "white"
        font.pointSize: 24

        MouseArea{
            id:mouseArea3
            hoverEnabled: false
            anchors.fill:parent
            onEntered: {parent.scale = 1.2; animation.pause()}
            onExited: {parent.scale = 1;}
            onPressed: {parent.scale = 0.9;
                animation.pause()}
            onReleased: {parent.scale = 1;}

            onClicked: {mainStack.push("GamingSwipeMenu.qml");
                mouseArea.destroy()}

        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

    Text//Назад
    {
        x: parent.width/2 - width/2
        y: 0.88*parent.height
        text: "Get back out there"
        font.family: robotoLight.name
        font.weight: Font.Light   // this is necessary or else it'll look like Roboto-Bold

        color: "white"
        font.pointSize: 12
        opacity: 0.8

        MouseArea{
            id:mouseArea4
            hoverEnabled: true
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.fill:parent
            onEntered: {parent.scale = 1.2; animation.pause()}
            onExited: {parent.scale = 1;}
            onPressed: {parent.scale = 0.9;
                animation.pause()}
            onReleased: {parent.scale = 1;}

            onClicked: {mainStack.push("UploadScreen.qml");
                mouseArea.destroy()}

        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

    /*Rectangle{
        id: table
        x: 170
        y: 176
        height: 679
        width: 1580
        gradient: Gradient{
            GradientStop{ position:0.0; color:"grey"}
            GradientStop{ position:0.3; color: "black"}
            GradientStop{ position:0.5; color: "black"}
            GradientStop{ position:0.7; color: "black"}
            GradientStop{ position:1.0; color: "grey"}
        }
        opacity: 0.3
    }*/
}
