import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/constants.dart';

class MenuController extends GetxController {

  // Define any variables or methods needed for the menu controller
  var selectedMenu = ''.obs;

  void selectMenu(String menu) {
    selectedMenu.value = menu;
    // Add any additional logic needed when a menu is selected
  }
  
  
}

Widget menu() {
  final controller = Get.put(MenuController());
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          controller.selectMenu('dashboard'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'dashboard'
                    ? cardColor// Highlight color for selected menu
                    : Colors.white, // Default color for unselected menu
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.dashboard_rounded,
                            color: controller.selectedMenu.value == 'dashboard'
                                ? Colors.white // Icon color for selected menu
                                : iconColor, // Icon color for unselected menu
                          ) // Adjust icon size as needed),
                        ),
                        SizedBox(
                          width: 10.0,
                        ), // Add spacing between icon and text
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            color: controller.selectedMenu.value == 'dashboard'
                                ? Colors.white // Text color for selected menu
                                : Colors.black, // Text color for unselected menu
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.looks_one_rounded,
                          color: iconColor,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      SizedBox(height: 8),
      GestureDetector(
        onTap: () {
          controller.selectMenu('message'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'message'
                    ? cardColor// Highlight color for selected menu
                    : Colors.white, // Default color for unselected menu
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.dashboard_rounded,
                            color: controller.selectedMenu.value == 'message'
                                ? Colors.white // Icon color for selected menu
                                : iconColor, // Icon color for unselected menu
                          ) // Adjust icon size as needed),
                        ),
                        SizedBox(
                          width: 10.0,
                        ), // Add spacing between icon and text
                        Text(
                          "Message",
                          style: TextStyle(
                            color: controller.selectedMenu.value == 'message'
                                ? Colors.white // Text color for selected menu
                                : Colors.black, // Text color for unselected menu
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      SizedBox(height: 8),
      GestureDetector(
        onTap: () {
          controller.selectMenu('my_orders'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'my_orders'
                    ? cardColor// Highlight color for selected menu
                    : Colors.white, // Default color for unselected menu
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.dashboard_rounded,
                            color: controller.selectedMenu.value == 'my_orders'
                                ? Colors.white // Icon color for selected menu
                                : iconColor, // Icon color for unselected menu
                          ) // Adjust icon size as needed),
                        ),
                        SizedBox(
                          width: 10.0,
                        ), // Add spacing between icon and text
                        Text(
                          "My Orders",
                          style: TextStyle(
                            color: controller.selectedMenu.value == 'my_orders'
                                ? Colors.white // Text color for selected menu
                                : Colors.black, // Text color for unselected menu
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      SizedBox(height: 8),
      GestureDetector(
        onTap: () {
          controller.selectMenu('buying_leads'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'buying_leads'
                    ? cardColor// Highlight color for selected menu
                    : Colors.white, // Default color for unselected menu
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.dashboard_rounded,
                            color: controller.selectedMenu.value == 'buying_leads'
                                ? Colors.white // Icon color for selected menu
                                : iconColor, // Icon color for unselected menu
                          ) // Adjust icon size as needed),
                        ),
                        SizedBox(
                          width: 10.0,
                        ), // Add spacing between icon and text
                        Text(
                          "Buying Leads",
                          style: TextStyle(
                            color: controller.selectedMenu.value == 'buying_leads'
                                ? Colors.white // Text color for selected menu
                                : Colors.black, // Text color for unselected menu
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      SizedBox(height: 8),
      GestureDetector(
        onTap: () {
          controller.selectMenu('transaction'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'transaction'
                    ? cardColor// Highlight color for selected menu
                    : Colors.white, // Default color for unselected menu
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.dashboard_rounded,
                            color: controller.selectedMenu.value == 'transaction'
                                ? Colors.white // Icon color for selected menu
                                : iconColor, // Icon color for unselected menu
                          ) // Adjust icon size as needed),
                        ),
                        SizedBox(
                          width: 10.0,
                        ), // Add spacing between icon and text
                        Text(
                          "Transaction",
                          style: TextStyle(
                            color: controller.selectedMenu.value == 'transaction'
                                ? Colors.white // Text color for selected menu
                                : Colors.black, // Text color for unselected menu
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      SizedBox(height: 8),
      GestureDetector(
        onTap: () {
          controller.selectMenu('update_profile'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'update_profile'
                    ? cardColor// Highlight color for selected menu
                    : Colors.white, // Default color for unselected menu
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.dashboard_rounded,
                            color: controller.selectedMenu.value == 'update_profile'
                                ? Colors.white // Icon color for selected menu
                                : iconColor, // Icon color for unselected menu
                          ) // Adjust icon size as needed),
                        ),
                        SizedBox(
                          width: 10.0,
                        ), // Add spacing between icon and text
                        Text(
                          "Update Profile",
                          style: TextStyle(
                            color: controller.selectedMenu.value == 'update_profile'
                                ? Colors.white // Text color for selected menu
                                : Colors.black, // Text color for unselected menu
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
      
    
    ],
  );
}