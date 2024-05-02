/// @description Insert description here
// You can write your code in this editor
global.InventoryBuffer = buffer_load("buf");



for(var i = 0 ;i < instance_number(obj_inventory_cell);i++){
	buffer_seek(global.InventoryBuffer, buffer_seek_start,0);
	with(obj_inventory_cell){
		var numb = buffer_read(global.InventoryBuffer,buffer_u8);
		var obj = buffer_read(global.InventoryBuffer,buffer_string);
		var count = buffer_read(global.InventoryBuffer,buffer_u8);
		if Number == numb{
			if asset_get_index(obj) !=-1{
				Object = asset_get_index(obj);
				Count = count;
			}
		}
	}
}

