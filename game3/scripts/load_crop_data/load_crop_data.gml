function load_crop_data() {
   // Load crop data when entering the room or game
   var file_name = "Crops_" + global.logged_in_user + ".bin";
   var CropBuffer = buffer_load(file_name);

   if (CropBuffer != -1) {
       var inst_num = buffer_read(CropBuffer, buffer_u32); // Read the number of crop instances

       for (var i = 0; i < inst_num; i++) {
           var _x = buffer_read(CropBuffer, buffer_f32);
           var _y = buffer_read(CropBuffer, buffer_f32);
           var _cropType = buffer_read(CropBuffer, buffer_u8);
           var _daysOld = buffer_read(CropBuffer, buffer_u8);
           var _growthStage = buffer_read(CropBuffer, buffer_u8); // Read growth stage
           var _fullyGrown = buffer_read(CropBuffer, buffer_bool); // Read fully grown status

           var new_crop = instance_create_layer(_x, _y, "Instances", obj_crops);
           new_crop.cropType = _cropType;
           new_crop.daysOld = _daysOld;
           new_crop.growthStage = _growthStage; // Apply growth stage
           new_crop.fullyGrown = _fullyGrown; // Apply fully grown status
           new_crop.growthStageDuration = ds_crops_types[# 0, new_crop.cropType]; // Ensure growthStageDuration is set

           if (new_crop.fullyGrown) {
               new_crop.alarm[1] = 1; // Set alarm if the crop is fully grown
           }
       }

       buffer_delete(CropBuffer);
   }
}
