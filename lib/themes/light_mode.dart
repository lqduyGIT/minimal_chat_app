import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey
        .shade300, // Đặt màu nền (background -> surface) cho giao diện Light Mode
    primary: Colors.grey
        .shade500, // Đặt màu chính (primary) cho các thành phần chính trong giao diện
    secondary: Colors.grey
        .shade200, // Đặt màu phụ (secondary) cho các thành phần khác, như nút phụ
    tertiary: Colors
        .white, // Đặt màu thứ ba (tertiary), có thể dùng cho các thành phần bổ sung
    inversePrimary: Colors.grey
        .shade300, // Đặt màu ngược cho màu chính, thường dùng cho các thành phần như text trên nền màu primary
  ),
);
