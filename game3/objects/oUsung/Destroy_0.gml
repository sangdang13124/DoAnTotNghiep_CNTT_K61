// Trong sự kiện xử lý chết của enemy
/// @description Handle enemy death
if instance_exists(bulletInst) && bulletInst.state == 0 {
    bulletInst.destroy = true; // Phá hủy viên đạn
}
