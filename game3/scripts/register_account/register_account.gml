function register_account() {
    var file_path = get_save_filename("Text Files (*.txt)|*.txt", "accounts.txt"); // Sử dụng hộp thoại để chọn vị trí lưu tệp
    show_debug_message("File path: " + file_path);

    if (file_path != "") { // Kiểm tra xem người dùng có chọn vị trí lưu tệp không
        // Kiểm tra xem tệp có tồn tại không trước khi mở
        var username_exists = false;
        if (file_exists(file_path)) {
            var file = file_text_open_read(file_path);

            while (!file_text_eof(file)) {
                var line = file_text_read_string(file);
                file_text_readln(file);

                var account_info = string_split(line, "|");
                if (account_info[0] == username) {
                    username_exists = true;
                    break;
                }
            }

            file_text_close(file);
        }

        if (username_exists) {
            message = "Username already exists. Please choose a different username.";
        } else {
            // Nếu tên đăng nhập không tồn tại, tiến hành đăng ký
            var file = file_text_open_append(file_path);
            file_text_write_string(file, username + "|" + password);
            file_text_writeln(file);
            file_text_close(file);

            message = "Account Registered Successfully!";
            login_mode = true;
            username = "";
            password = "";
            input_mode = "username";
        }
    } else {
        message = "Registration cancelled.";
    }
}
