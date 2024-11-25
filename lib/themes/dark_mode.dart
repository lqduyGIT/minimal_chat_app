import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey
        .shade900, // Đặt màu nền (background -> surface) cho giao diện Light Mode
    primary: Colors.grey
        .shade600, // Đặt màu chính (primary) cho các thành phần chính trong giao diện
    secondary: Colors.grey
        .shade700, // Đặt màu phụ (secondary) cho các thành phần khác, như nút phụ
    tertiary: Colors.grey
        .shade800, // Đặt màu thứ ba (tertiary), có thể dùng cho các thành phần bổ sung
    inversePrimary: Colors.grey
        .shade300, // Đặt màu ngược cho màu chính, thường dùng cho các thành phần như text trên nền màu primary
  ),
);
