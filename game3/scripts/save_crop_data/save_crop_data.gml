function save_crop_data() {
   // Save crop data when leaving the room or game
   var file_name = "Crops_" + global.logged_in_user + ".bin";
   var CropBuffer = buffer_create(1024, buffer_grow, 1);

   var inst_num = instance_number(obj_crops);
   buffer_write(CropBuffer, buffer_u32, inst_num); // Write the number of crop instances

   with (obj_crops) {
       buffer_write(CropBuffer, buffer_f32, x);
       buffer_write(CropBuffer, buffer_f32, y);
       buffer_write(CropBuffer, buffer_u8, cropType);
       buffer_write(CropBuffer, buffer_u8, daysOld);
       buffer_write(CropBuffer, buffer_u8, growthStage); // Save growth stage
       buffer_write(CropBuffer, buffer_bool, fullyGrown); // Save fully grown status
   }

   buffer_save(CropBuffer, file_name);
   buffer_delete(CropBuffer);
}
