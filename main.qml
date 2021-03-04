import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            header: Label{
                text:"Text1 Title"
                font.pixelSize: Qt.application.font.pixelSize * 2
                padding: 10
               }
            Label{
                text:"Text1 Text"
            }
            Button{
            text: "1"
            onClicked: {
                text++
            }
            }
        }

        Page {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
    }
}
