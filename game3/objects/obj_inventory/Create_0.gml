Width = 9;
Height = 0;


#macro CELLSIZE (sprite_get_width(spr_inventoty_cell)
for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+(i*CELLSIZE)),y,-1,obj_inventory_cell);
	obj.Number = i;
	
}
