function check_login() {
    var file_path = get_open_filename("Text Files (*.txt)|*.txt", "accounts.txt"); 
    show_debug_message("File path: " + file_path);

    if (file_path != "") {
        if (file_exists(file_path)) {
            var file = file_text_open_read(file_path);
            var valid_login = false;

            while (!file_text_eof(file)) {
                var line = file_text_read_string(file);
                file_text_readln(file);

                var account_info = string_split(line, "|");
                if (account_info[0] == username && account_info[1] == password) {
                    valid_login = true;
                    global.logged_in_user = username; // Lưu tên đăng nhập
                    break;
                }
            }

            file_text_close(file);

            if (valid_login) {
                message = "Login Successful!";
                room_goto(Room2); // Chuyển đến phòng trò chơi
            } else {
                message = "Invalid Username or Password";
            }
        } else {
            message = "No accounts found. Please register first.";
        }
    } else {
        message = "Login cancelled.";
    }
}