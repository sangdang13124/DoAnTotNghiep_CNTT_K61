Width = 9;
Height = 0;


#macro CELLSIZE (sprite_get_width(spr_inventory_cell)
for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+(i*CELLSIZE)),y,-1,obj_inventory_cell);
	obj.Number = i;
	obj.Parent = "Player";
	
	 // Kiểm tra xem ô đang được tạo có phải là ô cuối cùng không
    if (i == Width - 1) {
        obj.IsLastCell = true;
    } else {
        obj.IsLastCell = false;
    }
	
}




obj_inventory_cell.Cells = instance_number(obj_inventory_cell);
global.InventoryBuffer = buffer_create(256,buffer_grow,1);

