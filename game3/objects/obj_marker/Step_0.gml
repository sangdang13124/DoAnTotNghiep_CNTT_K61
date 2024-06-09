

// Giảm thời gian sống
lifetime--;

if (lifetime % 10 < 5) {
    image_alpha = 0.5;  // Nhấp nháy (ẩn)
} else {
    image_alpha = 1;  // Hiển thị bình thường
}

// Xóa obj_marker khi hết thời gian sống
if (lifetime <= 0) {
    instance_destroy();
}
