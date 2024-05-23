/// @description Insert description here
// You can write your code in this editor
// Vẽ giao diện người dùng
draw_self();

// Hiển thị hướng dẫn
draw_text(10, 10, "Press L to Login or R to Register");
draw_text(10, 30, "Username: " + username);
draw_text(10, 50, "Password: " + string_repeat("*", string_length(password)));
draw_text(10, 70, message);