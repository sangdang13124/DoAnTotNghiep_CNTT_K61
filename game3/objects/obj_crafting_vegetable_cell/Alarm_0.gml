/// @description Insert description here
// You can write your code in this editor
Resources = [0,0,0,0];
for( i = 0 ; i < array_length(Resources_name); i++){
	with(obj_inventory_cell){
		if object_get_name(Object) = "obj_" + string(other.Resources_name[other.i]){
			other.Resources[other.i] += Count;
		}
	}
}

 NeedResource = [
CRAFTS1[Number , 1],
CRAFTS1[Number , 2],
CRAFTS1[Number , 3],
CRAFTS1[Number , 4]
];