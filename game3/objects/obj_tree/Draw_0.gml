// obj_tree Draw Event
draw_self(); // Vẽ đối tượng như bình thường

// Sử dụng alpha value
draw_set_alpha(image_alpha);
draw_sprite(sprite_index, image_index, x, y);
draw_set_alpha(1); // Reset lại alpha về 1 sau khi vẽ
