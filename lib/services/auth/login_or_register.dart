import 'package:flutter/material.dart';

import '../../pages/login_page.dart';
import '../../pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially(ban đầu),show login page
  bool showLoginPage = true;

  // toggle between login and register page (chuyển đổi giữa trang đăng nhập và đăng ký )
// Hàm togglePages dùng để chuyển đổi giữa hai trang (ví dụ: trang đăng nhập và trang đăng ký)
  void togglePages() {
    // setState() dùng để cập nhật lại giao diện (UI) khi trạng thái thay đổi
    setState(() {
      // Đảo ngược giá trị của biến showLoginPage (nếu true thì đổi thành false, ngược lại)
      // Biến này xác định xem trang đăng nhập có đang hiển thị hay không
      showLoginPage = !showLoginPage;
      // Ví dụ: nếu đang ở trang đăng nhập (showLoginPage = true),
      // gọi togglePages sẽ chuyển sang trang khác (showLoginPage = false).
    });
  }

  @override
  Widget build(BuildContext context) {
    // Kiểm tra xem có đang hiển thị trang đăng nhập hay không
    if (showLoginPage) {
      // Nếu showLoginPage = true, hiển thị LoginPage và truyền hàm togglePages cho thuộc tính onTap
      return LoginPage(
        onTap:
            togglePages, // Khi bấm vào onTap trong LoginPage, sẽ chuyển sang trang đăng ký
      );
    } else {
      // Nếu showLoginPage = false, hiển thị RegisterPage và truyền hàm togglePages cho thuộc tính onTap
      return RegisterPage(
        onTap:
            togglePages, // Khi bấm vào onTap trong RegisterPage, sẽ chuyển sang trang đăng nhập
      );
    }
  }
}
