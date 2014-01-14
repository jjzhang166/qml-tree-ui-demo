import QtQuick 2.0

Item {
    id: frame
    width: childrenRect.width
    height: childrenRect.height

    Rectangle {
        width: 10
        color: "#000000"
        height: parent.height
        x: 0
        y: 0
    }

    Column {
        x: 10
        id: content

        Position { }
    }
}
