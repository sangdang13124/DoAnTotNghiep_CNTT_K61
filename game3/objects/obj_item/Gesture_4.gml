Dragging = false;

if collision_point(x, y, obj_inventory_cell, 0, 1) {
    var cell = collision_point(x, y, obj_inventory_cell, 0, 1);
    if (cell.Object == object_index || cell.Object == noone) {
        cell.Object = object_index;
        cell.Count++;
        instance_destroy();
    }
} else {
    if (collision_point(x, y, obj_item, 0, 1)) {
        var obj = collision_point(x, y, obj_item, 0, 1);
        if (obj.object_index == object_index) {
            obj.Count += Count;
            instance_destroy();
            exit;
        }
    } else if (distance_to_object(oPlayer) > DraggingRadius) {
        x = oPlayer.x + irandom_range(-DraggingRadius, DraggingRadius);
        y = oPlayer.y + irandom_range(-DraggingRadius, DraggingRadius);
    }
}

Dragging = false;
