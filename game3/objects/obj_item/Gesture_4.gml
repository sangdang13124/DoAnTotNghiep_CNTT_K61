
if Dragging == true {
    if collision_point(x, y, obj_inventory_cell, 0, 1) {
        var cell = collision_point(x, y, obj_inventory_cell, 0, 1);
        switch(Type) {
            case "resources":
                if cell.Object == object_index || cell.Object == noone {
                    cell.Object = object_index;
                    cell.Count += Count;

                    if instance_exists(obj_crafting_cell) {
                        obj_crafting_cell.alarm[0] = 1;
                    }

                    instance_destroy();
                    exit;
                }
            break;
            case "tool":
                if cell.Object == noone {
                    cell.Object = object_index;
                    cell.Count ++;
                    obj_player.Item = noone;
                    
                    if cell.Number == 8 {
                        obj_player.Item = object_index;
                        obj_player.ItemSprite = sprite_index;
                    }

                    if instance_exists(obj_crafting_cell) {
                        obj_crafting_cell.alarm[0] = 1;
                    }

                    instance_destroy();
                    exit;
                }
            break;
        }
    } else {
        if Stack == true {
            if collision_point(x, y, obj_item, 0, 1) {
                var obj = collision_point(x, y, obj_item, 0, 1);
                if obj.object_index == object_index {
                    obj.Count += Count;
                    instance_destroy();
                    exit;
                }
            }
        } else if distance_to_object(obj_player) > DraggingRadius {
            x = obj_player.x + irandom_range(-DraggingRadius, DraggingRadius);
            y = obj_player.y + irandom_range(-DraggingRadius, DraggingRadius);
        } else {
			
            obj_player.Item = noone; // Gán giá trị noone cho obj_player.Item
			 }
        }
    }


Dragging = false;
