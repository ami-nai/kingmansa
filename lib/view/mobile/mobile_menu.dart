import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/resources.dart';

Widget buildMobileMenu() {
  final controller = Get.put(ViewController());
    print('MobileController initialized');
    // mobileDeviceWidth.value = Get.width;
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      children: menuItems.map((item) {
        return
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: (controller.selectedMenu.value != item['label']) ?
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.grey[200],
            leading: Icon(item['icon'], color: iconColor),
            trailing: Icon(Icons.looks_two_rounded, color: iconColor),
            title: Text(item['label']),
            onTap: () {
              // Close the menu when an item is tapped
              controller.showMenu.value = false;
              controller.selectMenu(item['label']);
              print("Tapped on ${item['label']}"); // Debugging
              // Handle menu item tap logic here
            },
          ) : SizedBox.shrink(),
        );
      }).toList(),
    ),
  );
}
