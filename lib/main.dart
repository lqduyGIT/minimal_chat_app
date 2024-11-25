import 'package:firebase_core/firebase_core.dart';
import 'package:minimalchatapp/services/auth/auth_gate.dart';
import 'package:minimalchatapp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  // Đảm bảo rằng tất cả các sự kiện Flutter đã được khởi tạo đúng cách
  WidgetsFlutterBinding.ensureInitialized();
  // Khởi tạo Firebase với các tùy chọn mặc định cho nền tảng hiện tại
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
