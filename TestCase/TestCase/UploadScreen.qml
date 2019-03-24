import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick 2.12
import QtQml.Models 2.1
import "Parallax.js" as Parallax

Item {
    width: 1920
    height: 1080
    anchors.fill: parent

    Image{
        id: background
        fillMode: Image.PreserveAspectCrop
        source: "images/moon.jpg"
        anchors.fill: parent
    }

    FontLoader
    {
        id: robotoLight
        source: "fonts/Engravers Gothic BT.ttf"
    }

    Text
    {
        text: "Open files"
        font.family: robotoLight.name
        font.weight: Font.Light   // this is necessary or else it'll look like Roboto-Bold
        x: parent.width/2 - width/2
        y: parent.height/2 *0.95
        color: "white"
        font.pointSize: 24

        MouseArea{
            id:mouseArea
            hoverEnabled: true
            anchors.fill:parent
            onEntered: {parent.scale = 1.2; animation.pause()}
            onExited: {parent.scale = 1;}
            onPressed: {parent.scale = 0.9;
                animation.pause()}
            onReleased: {parent.scale = 1; loading.opacity = 1}

            onClicked: {mainStack.push("SecondScreen.qml");
                mouseArea.destroy()}

        }
        Behavior on scale{
            PropertyAnimation{
                duration:100
            }
        }
    }

Rectangle{
    id: substrate
    anchors.fill: parent
    opacity:0
}

Rectangle{
    id:smallStar1
    x: 407
    y: 350
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Image {
    id: loading
    source: "images/loading.png"
    height: 50
    width: 50
    x: parent.width/2 - width/2
    y: 565
    opacity: 0
    RotationAnimator {
        target: loading;
            from: 0;
            to: 360;
            duration: 2500
            running: true
            loops:Animation.Infinite
        }
}

Rectangle{
    id:smallStar2
    x: 146
    y: 158
    height:2
    width:2
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation2
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 100 }
        NumberAnimation { from:0; to: 1; duration: 150 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar3
    x: 746
    y: 927
    height:7
    width:7
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation3
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar4
    x: 1270
    y: 175
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation4
        running: true
        NumberAnimation { from:0; to: 1; duration: 1000 }
        NumberAnimation { from:1; to: 0; duration: 1000 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar5
    x: 500
    y: 111
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation5
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar6
    x: 347
    y: 521
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation6
        running: true
        NumberAnimation { from:0; to: 1; duration: 500 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar7
    x: 1496
    y: 809
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation7
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 1000 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar8
    x: 552
    y: 153
    height:7
    width:7
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation8
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 250 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar9
    x: 217
    y: 958
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation9
        running: true
        NumberAnimation { from:0; to: 1; duration: 2500 }
        NumberAnimation { from:1; to: 0; duration: 5000 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar10
    x: 279
    y: 95
    height:3
    width:3
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation10
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 750 }
        NumberAnimation { from:0; to: 1; duration: 750 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar11
    x: 186
    y: 1055
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation11
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar12
    x: 186
    y: 111
    height:10
    width:10
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation12
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar13
    x: 1799
    y: 958
    height:7
    width:7
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation13
        running: true
        NumberAnimation { from:0; to: 1; duration: 1250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 1250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar14
    x: 1865
    y: 1110
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation14
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 250 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 250 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar15
    x: 1860
    y: 111
    height:3
    width:3
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation15
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar16
    x: 82
    y: 423
    height:10
    width:10
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation16
        running: true
        NumberAnimation { from:0; to: 1; duration: 2500 }
        NumberAnimation { from:1; to: 0; duration: 2500 }
        NumberAnimation { from:0; to: 1; duration: 2500 }
        NumberAnimation { from:1; to: 0; duration: 2500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar17
    x: 186
    y: 500
    height:2
    width:2
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation17
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar18
    x: 1558
    y: 377
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation18
        running: true
        NumberAnimation { from:0; to: 1; duration: 100 }
        NumberAnimation { from:1; to: 0; duration: 250 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar19
    x: 1438
    y: 67
    height:10
    width:10
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation19
        running: true
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 750 }
        NumberAnimation { from:0; to: 1; duration: 250 }
        NumberAnimation { from:1; to: 0; duration: 750 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar20
    x: 67
    y: 752
    height:7
    width:7
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation20
        running: true
        NumberAnimation { from:0; to: 1; duration: 1000 }
        NumberAnimation { from:1; to: 0; duration: 1000 }
        NumberAnimation { from:0; to: 1; duration: 750 }
        NumberAnimation { from:1; to: 0; duration: 750 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar21
    x: 107
    y: 897
    height:3
    width:3
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation21
        running: true
        NumberAnimation { from:0; to: 1; duration: 500 }
        NumberAnimation { from:1; to: 0; duration: 500 }
        loops:Animation.Infinite
    }
}

Rectangle{
    id:smallStar22
    x: 1597
    y: 565
    height:5
    width:5
    radius: 0.5*width

    SequentialAnimation on opacity{
        id:animation22
        running: true
        NumberAnimation { from:0; to: 1; duration: 1000 }
        NumberAnimation { from:1; to: 0; duration: 1000 }
        NumberAnimation { from:0; to: 1; duration: 750 }
        NumberAnimation { from:1; to: 0; duration: 750 }
        loops:Animation.Infinite
    }
}
}
