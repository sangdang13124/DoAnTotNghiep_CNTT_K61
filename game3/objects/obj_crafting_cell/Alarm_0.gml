/// @description Insert description here
// You can write your code in this editor
Resources = [0,0];
for( i = 0 ; i < array_length(Resources_name); i++){
	with(obj_inventory_cell){
		if object_get_name(Object) = "obj_" + string(other.Resources_name[other.i]){
			other.Resources[other.i] += Count;
		}
	}
}

 NeedResource = [
CRAFTS[Number , 1],
CRAFTS[Number , 2]
];