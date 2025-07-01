import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/resources.dart';

Widget buildChatList(BuildContext context) {
  final controller = Get.put(ViewController());
  final mWidth = MediaQuery.of(context).size.width;
  return Container(
    width: mWidth,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cardColor,
            border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),

          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Text(
                    'Messages',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      hoverColor: Colors.white,
                      focusColor: Colors.white30,
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,

                    minimumSize: Size(350, 30),
                    backgroundColor: Colors.amber,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    minimumSize: Size(350, 30),
                    backgroundColor: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Unread",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: chatListItems.length,
            itemBuilder: (context, index) {
              return
                Obx((){
                  return Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: index == controller.selectedChatListTile.value ? cardColor : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),

                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      chatListItems[index]['icon'],
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      chatListItems[index]['name'],
                      style: TextStyle(
                        color: index != controller.selectedChatListTile.value ? Colors.black : Colors.white,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  subtitle: Text(
                    chatListItems[index]['mobile'],
                    style: TextStyle(
                      color: index != controller.selectedChatListTile.value ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 10,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        chatListItems[index]['time'],
                        style: TextStyle(
                          color: index != controller.selectedChatListTile.value ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child: Image.asset(
                          chatListItems[index]['seenIcon'],
                          fit: BoxFit.cover,
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    controller.selectedChatListTile.value = index;
                    controller.isChatListTileSelected.value = true;
                  },
                ),
              );
            
                });
              
               
            },
          ),
        ),
      ],
    ),
  );
}
