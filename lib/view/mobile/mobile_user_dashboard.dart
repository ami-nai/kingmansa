import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/resources.dart';
import 'package:kingmansa/view/chat_list.dart';
import 'package:kingmansa/view/desktop/desktop_user.dart';
import 'package:kingmansa/view/desktop/web_messenger.dart';
import 'package:kingmansa/view/dimensions.dart';
import 'package:kingmansa/view/dropdown_items.dart';
import 'package:kingmansa/view/individual_mobile_message.dart';
import 'package:kingmansa/view/mobile/mobile_dashboard.dart';
import 'package:kingmansa/view/mobile/mobile_menu.dart';
import 'package:kingmansa/view/mobile_message_screen.dart';

class MobileUserDashboard extends StatelessWidget {
  MobileUserDashboard({super.key});

  final controller = Get.put(ViewController());

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200],
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      10.0,
                                      10,
                                      0,
                                      10.0,
                                    ),
                                    child: Icon(
                                      Icons.dashboard_rounded,
                                      color: iconColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ), // Add spacing between icon and text
                                  Obx(() => Text('${controller.selectedMenu.value}')),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(
                                      Icons.looks_one_rounded,
                                      color: iconColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                          child: IconButton(
                            icon: Icon(Icons.menu, color: Colors.black),
                            onPressed: () {
                              print("Menu button tapped");
                              print(
                                "Menu visibility toggled: ${controller.showMenu.value}",
                              );
                              controller.showMenu.value =
                                  !controller.showMenu.value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Dropdown menu
                  Obx(() {
                    if (controller.showMenu.value) {
                      return buildMobileMenu();
                    } else {
                      return SizedBox.shrink(); // Return an empty widget if the menu is hidden
                    }
                  }),

                  Obx((){
              if(controller.selectedMenu.value == 'Dashboard')
              {
                controller.isChatListTileSelected.value = false;
                return buildMobileDashboard();
              }
              else if(controller.selectedMenu.value == 'Message'){
                if(!controller.isChatListTileSelected.value)
                  return buildChatList(context);
                else
                  return buildIndivisualMobileMessage(context);
              }
              else{ 
                controller.isChatListTileSelected.value = false;
                return Text("bye");}
            })
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
