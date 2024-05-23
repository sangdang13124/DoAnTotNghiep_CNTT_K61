/// @description Insert description here
// You can write your code in this editor
global.InventoryBuffer = buffer_create(256,buffer_grow,1);
#macro INVBUFFER     global.InventoryBuffer



with(obj_inventory_cell){
	buffer_write(INVBUFFER,buffer_u8,Number);
	buffer_write(INVBUFFER,buffer_string,object_get_name(Object));
	buffer_write(INVBUFFER,buffer_u8,Count);
	buffer_save(INVBUFFER,"buf");
}

