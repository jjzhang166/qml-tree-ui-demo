import QtQuick 2.1
import QtQuick.Controls 1.0

ApplicationWindow {
    id: app
    width: 800
    height: 600

    property int lastNodeId: 0
    function getId() { return lastNodeId++; }

    Level { }
}
