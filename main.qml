import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    color: "#ffaaff"
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 49
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            header: Label{
                color: "#ffaaff"
                text:"Супер Приложение!"
                font.pixelSize: Qt.application.font.pixelSize * 2
                padding: 10
            }
            Label{
                width: 640
                height: 154
                color: "#dd080bb7"
                text:"Привет"
                font.pointSize: 18
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignHCenter
            }
            Label{
                x: 0
                y: 129
                width: 640
                height: 163
                color: "#dd080bb7"
                text:"Тыкай сюда"
                font.pointSize: 12
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignHCenter


            }
            Button{
                x: 288
                y: 165
                text: "1"
                onClicked: {
                    text++
                }
            }
            Label {
                x: 374
                y: 359
                width: 266
            height: 29
            color: "#dd080bb7"
            text: "Теперь листай дальше ->"
            textFormat: Text.RichText
            font.pointSize: 10
            horizontalAlignment: Text.AlignHCenter
            }

        }

        Page {
            Label{
                width: 640
                height: 190
                color: "#dd080bb7"
                text:"Включай"
                font.pointSize: 18
                textFormat: Text.RichText
                horizontalAlignment: Text.AlignHCenter
            }
            Switch {
                id: element1
                x: 290
                y: 37
                text: qsTr(" ")
            }
        }
        Page {

            Button{
                text:"TEXT 2"
            }

        }

        Label {
            width: 640
            height: 154
            color: "#dd080bb7"
            text: "Привет"
            textFormat: Text.RichText
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 18
        }

        Switch {
            id: element
            x: 269
            y: 147
            text: qsTr("Switch")
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            x: 0
            y: 0
            text: qsTr("Page 1")

            TabButton {
                x: 80
                y: 0
                text: qsTr("Page 2")
            }
        }
        TabButton {
            x: 78
            y: 0
            width: 79
            height: 48
            text: qsTr("Page 3")
        }
    }
}

/*##^##
Designer {
    D{i:1;customId:""}
}
##^##*/
