/// @description Insert description here
// You can write your code in this editor

var Buff = buffer_load("Chest"+string(Number));
 if Buff = -1{
	 FirstOpen = false;
	 ChestBuffer = buffer_create(128,buffer_grow,1);
 }else{
	 FirstOpen = true;
	 ChestBuffer = Buff;
 }
 
 Activate = !Activate;
 
 if (Activate){
	for(var i = 0 ; i < Width ; i++){
	
	var obj = instance_create_depth(x+CELLSIZE)/2 -((Width*CELLSIZE))/2)+(i*CELLSIZE)),y- CELLSIZE),-1,obj_inventory_cell);
	obj.Number = i;
	obj.Parent = id;
	
	if FirstOpen == false{
		obj.Object = choose(noone,obj_log,obj_rock);
		obj.Count = irandom_range(1,10);
	}else{
		var numb = buffer_read(ChestBuffer,buffer_u8);
		var _obj = buffer_read(ChestBuffer,buffer_string);
		var count = buffer_read(ChestBuffer,buffer_u8);
		if obj.Number==numb{
			if asset_get_index(_obj) !=-1{
				obj.Object = asset_get_index(_obj);
				obj.Count = count;
			}
		}	
}
Cells[array_length(Cells)]=obj;
}
FirstOpen = true;
 }else{
	 buffer_seek(ChestBuffer,buffer_seek_start,0);
	 for(var i = 0; i < array_length(Cells); i++){
		 with(Cells[i]){
		 buffer_write(other.ChestBuffer,buffer_u8 , Number);
		 buffer_write(other.ChestBuffer,buffer_string , object_get_name(Object));
		 buffer_write(other.ChestBuffer,buffer_u8 , Count);
	 }
	 instance_destroy(Cells[i]);
 }
 buffer_save(ChestBuffer,"Chest"+ string(Number));
 buffer_delete(ChestBuffer);
 }