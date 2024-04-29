/// @description Insert description here
// You can write your code in this editor
Dragging = false;
 
if collision_point(x,y,obj_inventory_cell,0,1){
	
	var cell = collision_point(x,y,obj_inventory_cell,0,1);
	if cell.Object == object_index||cell.Object==noone{
	cell.Object = object_index;
	cell.Count++;
	instance_destroy();
}
}