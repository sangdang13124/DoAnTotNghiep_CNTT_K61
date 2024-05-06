
if Count >= 1 {
	var obj = instance_create_depth(x,y,-1,Object);
	obj.Dragging = true;
	Count --;
	if Count == 0{
		Object = noone
	}
	
	if instance_exists(obj_crafting_cell){
			obj_crafting_cell.alarm[0] = 1;
		}
	
}