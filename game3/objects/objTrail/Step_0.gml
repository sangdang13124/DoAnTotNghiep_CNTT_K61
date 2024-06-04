/// @description Insert description here
// You can write your code in this editor
// objTrail Step Event
image_alpha -= fade_speed;

if (image_alpha <= 0) {
   
    instance_destroy(); // Hủy đối tượng khi độ mờ giảm xuống 0
}