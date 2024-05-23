function register_account() {
    var file_path = get_save_filename("Text Files (*.txt)|*.txt", "accounts.txt"); // Sử dụng hộp thoại để chọn vị trí lưu tệp
    show_debug_message("File path: " + file_path);

    if (file_path != "") { // Kiểm tra xem người dùng có chọn vị trí lưu tệp không
        var file = file_text_open_append(file_path);
        file_text_write_string(file, username + "|" + password);
        file_text_writeln(file);
        file_text_close(file);

        message = "Account Registered Successfully!";
        login_mode = true;
        username = "";
        password = "";
        input_mode = "username";
    } else {
        message = "Registration cancelled.";
    }
}
