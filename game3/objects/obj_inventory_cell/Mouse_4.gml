
if Count >= 1 {
	var obj = instance_create_depth(x,y,-1,Object);
	obj.Dragging = true;
	Count --;
	if Count == 0{
		Object = noone
	}
}