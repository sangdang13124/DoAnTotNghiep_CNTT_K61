// Đặt kích thước của form
draw_self();
var form_width = 300;
var form_height = 150;

// Tính toán vị trí của form để căn giữa màn hình
var form_x = (room_width - form_width) / 2;
var form_y = (room_height - form_height) / 2;

// Hiển thị hướng dẫn
draw_set_color(c_black);
draw_text(10, 10, "Press F1 to Login or F2 to Register");

// Vẽ hộp để tạo ô text box cho Username
var textbox_width = form_width - 20;
var textbox_height = 20;
var textbox_x = form_x + 10;
var textbox_y = form_y + 50;

// Đặt alpha để làm ô text box trắng đục
draw_set_alpha(0.5); 

draw_set_color(c_white); // Màu trắng cho ô text box
draw_rectangle(textbox_x, textbox_y, textbox_x + textbox_width, textbox_y + textbox_height, true); // Vẽ hộp màu trắng đục

// Vẽ hộp để tạo ô text box cho Password
var password_textbox_y = textbox_y + 40; // Cách Username textbox 40 pixel

draw_rectangle(textbox_x, password_textbox_y, textbox_x + textbox_width, password_textbox_y + textbox_height, true); // Vẽ hộp màu trắng đục

// Thiết lập alpha về bình thường
draw_set_alpha(1);

// Hiển thị văn bản
draw_set_color(c_black);
var text_size = 16; // Kích thước chữ
draw_text_ext(textbox_x + 5, textbox_y + 5, "Username: " + username, text_size, textbox_width); // Đánh văn bản trong ô text box
draw_text_ext(textbox_x + 5, password_textbox_y + 5, "Password: " + string_repeat("*", string_length(password)), text_size, textbox_width); // Đánh văn bản trong ô text box

draw_text_ext(form_x + 10, form_y + 120, message, 1, form_width - 20);
