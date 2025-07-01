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
        backgroundColor: cardColor,
        title: Row(
          children: <Widget>[
            Icon(Icons.dashboard, color: Colors.white),
            Spacer(),
            Icon(Icons.message_outlined, color: Colors.white),
            Icon(Icons.notifications_none_outlined, color: Colors.white),
            Row(
              children: <Widget>[
                Icon(Icons.account_circle_outlined, color: Colors.white),
                Text('Trade PRO', style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
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
            Obx((){
              if(controller.selectedMenu.value == 'dashboard')
              {
                return buildDesktopDashboard();
              }
              else if(controller.selectedMenu.value == 'message'){
                return buildWebMessenger();
              }
              else{ return Text("bye");}
            })
              
            
          ],
        ),
      ),
    );
  }
}
