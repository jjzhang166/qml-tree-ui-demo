function createChild(parent_item) {
    var component = Qt.createComponent("Level.qml");
    if (component.status == Component.Ready)
    {
        var sprite = component.createObject(parent_item, {"x": 70, "y": 30, "nodeId": nodeId});
        if (sprite == null) console.log("Error creating Level object");
    }
    else
    {
        console.log("Error loading component:", component.errorString());
    }
}

function createSiblingAfter(sibling_position)
{
    var component = Qt.createComponent("Position.qml");
    if (component.status == Component.Ready)
    {
        var sprite = component.createObject(sibling_position.parent);
        if (sprite == null) console.log("Error creating Position object");
    }
    else
    {
        console.log("Error loading component:", component.errorString());
    }
}
