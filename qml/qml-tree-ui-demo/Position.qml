import QtQuick 2.0
import "component_creation.js" as CC

Item {
    id: position0
    width: childrenRect.width
    height: childrenRect.height

    Rectangle {
        color: "red"
        width: 80
        height: 30

        Text {
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            Component.onCompleted: text = app.getId() // Set once, avoid bindung

            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
                onClicked: {
                    if (mouse.button == Qt.LeftButton)
                    {
                        CC.createChild(position0);
                    }
                    else if(mouse.button == Qt.RightButton)
                    {
                        CC.createSiblingAfter(position0)
                    }
                    else (mouse.button == Qt.MiddleButton)
                    {
                        // no clue how to implement
                        // CC.createSiblingBefore(position0)
                    }
                }
            }
        }
    }
}
