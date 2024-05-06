Width = 9;
Height = 0;


#macro CELLSIZE (sprite_get_width(spr_inventoty_cell)
for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+(i*CELLSIZE)),y,-1,obj_inventory_cell);
	obj.Number = i;
	obj.Parent = "Player";
}

#macro CELLSIZE(sprite_get_width(spr_inventoty_cell1)
for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+(i*CELLSIZE)),y,-1,obj_inventory_cell1);
	obj.Number = i;
	obj.Parent = "Player";
}

obj_inventory_cell1.Cells = instance_number(obj_inventory_cell1);


obj_inventory_cell.Cells = instance_number(obj_inventory_cell);
global.InventoryBuffer = buffer_create(256,buffer_grow,1);

