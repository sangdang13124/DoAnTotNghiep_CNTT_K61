var Buff = buffer_load("Warehouse"+string(Number));
 if Buff = -1{
	 FirstOpen = false;
	 ChestBuffer = buffer_create(128,buffer_grow,1);
 }else{
	 FirstOpen = true;
	 ChestBuffer = Buff;
 }
 
 
 
 
 Activate = !Activate;
 
 if (Activate){
	

	
	for (var row = 0; row < Height; row++) {
    for (var col = 0; col < Width; col++) {
        var obj = instance_create_depth(x + col * CELLSIZE)+150, y + row * CELLSIZE)-200,-1, obj_inventory_cell);
  
		
		
		
		
		obj.Number = col; // Gán số thứ tự cột cho ô cell
        obj.Parent = id; // Gán id của đối tượng chứa bảng cell cho ô cell
       
    

	
	if FirstOpen == false{
		obj.Object = noone;
		obj.Count = 0;
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
 
 buffer_save(ChestBuffer,"Warehouse"+ string(Number));
 buffer_delete(ChestBuffer);
 
 } 