import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';


Widget menu() {
  final controller = Get.put(ViewController());
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      GestureDetector(
        onTap: () {
          controller.selectMenu('Dashboard'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'Dashboard'
                    ? cardColor// Highlight color for selected menu
                    : Colors.grey[200], // Default color for unselected menu
               
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
                            color: controller.selectedMenu.value == 'Dashboard'
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
                            color: controller.selectedMenu.value == 'Dashboard'
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
          controller.selectMenu('Message'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'Message'
                    ? cardColor// Highlight color for selected menu
                    : Colors.grey[200], // Default color for unselected menu
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.chat_bubble_rounded,
                            color: controller.selectedMenu.value == 'Message'
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
                            color: controller.selectedMenu.value == 'Message'
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
          controller.selectMenu('My Orders'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'My Orders'
                    ? cardColor// Highlight color for selected menu
                    : Colors.grey[200], // Default color for unselected menu
               
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.shopping_cart_rounded,
                            color: controller.selectedMenu.value == 'My Orders'
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
                            color: controller.selectedMenu.value == 'My Orders'
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
          controller.selectMenu('Buying Leads'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'Buying Leads'
                    ? cardColor// Highlight color for selected menu
                    : Colors.grey[200], // Default color for unselected menu
               
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.person_pin_circle_sharp,
                            color: controller.selectedMenu.value == 'Buying Leads'
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
                            color: controller.selectedMenu.value == 'Buying Leads'
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
          controller.selectMenu('Transaction'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'Transaction'
                    ? cardColor// Highlight color for selected menu
                    : Colors.grey[200], // Default color for unselected menu
                
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.payment_rounded,
                            color: controller.selectedMenu.value == 'Transaction'
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
                            color: controller.selectedMenu.value == 'Transaction'
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
          controller.selectMenu('Update Profile'); // Update the selected menu
        },
        child: Obx(() => Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: controller.selectedMenu.value == 'Update Profile'
                    ? cardColor// Highlight color for selected menu
                    : Colors.grey[200], // Default color for unselected menu
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                          child: Icon(Icons.person,
                            color: controller.selectedMenu.value == 'Update Profile'
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
                            color: controller.selectedMenu.value == 'Update Profile'
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