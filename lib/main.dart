import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/view/desktop/desktop_user_dashboard.dart';
import 'package:kingmansa/view/mobile/mobile_user_dashboard.dart';
import 'package:kingmansa/view/responsive_layout.dart';
// import 'package:kingmansa/view/mobile/mobile_user_dashboard.dart';
// import 'package:kingmansa/view/responsive_layout.dart';
// import 'package:kingmansa/view/user_dashboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Add this
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kingmansa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ResponsiveLayout(mobileBody: MobileUserDashboard(), desktopBody: DesktopUserDashboard()),
      // home: DesktopUserDashboard(),
    );
  }
}
