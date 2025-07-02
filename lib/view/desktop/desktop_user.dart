import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/view/desktop/menu.dart';
import 'package:kingmansa/view/desktop/web_dashboard.dart';
import 'package:kingmansa/view/desktop/web_messenger.dart';
import 'package:kingmansa/view/web_message_screen.dart';



class DesktopUserDashboard extends StatelessWidget {
  DesktopUserDashboard({super.key});

  final controller = Get.put(ViewController());

  final List<String> gridItems = [
    'Unread Message',
    'Toral Orders',
    'Processing Order',
    'Complete Orders',
  ];

 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: 80,
      backgroundColor: cardColor,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10000),
              child: Image.asset(
                'assets/images/logo.webp',
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            Spacer(),
            Icon(Icons.message_outlined, color: Colors.white, size: 20),
            Icon(Icons.notifications_none_outlined, color: Colors.white, size: 20),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10000),
                  child: Image.asset(
                    'assets/images/logo.webp',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Trade PRO',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    ),
    body: LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
          
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight, // Ensures the content fills the screen
        
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Pushes footer to the bottom
              children: [
                // Main Content
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 40, 100, 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Side Menu
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200]!,
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: Offset(3, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: menu(),
                        ),
                      ),
                      SizedBox(width: 20),
                      Obx(() {
                        if (controller.selectedMenu.value == 'Dashboard') {
                          return buildDesktopDashboard(context);
                        } else if (controller.selectedMenu.value == 'Message') {
                          return buildWebMessenger(context);
                        } else {
                          return Text("bye");
                        }
                      }),
                    ],
                  ),
                ),
            
                // Footer
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 80,
                  color: cardColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Copyright © 2025 Kingmansa. All rights reserved.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Terms of Use',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(' | '),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
}



