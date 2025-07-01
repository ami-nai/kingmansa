  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/view/mobile/mobile_user_dashboard.dart';

Widget buildMessageBubble(
    String sender,
    String time,
    String message, {
    required bool isMe,
  }) {

    final controller = Get.put(ViewController());
    return Align(
      //alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        // width: 400,
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          // color: isMe ? Colors.grey[200] : Colors.white,
          // borderRadius: BorderRadius.circular(8),
          // border: Border.all(color: Colors.grey[300]!),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: isMe
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            if (isMe) ...[
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          sender,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        width:
                            controller.mobileDeviceWidth.value, // Random width

                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                          child: Text(message, style: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage('assets/images/saree.jpeg'),
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ] else ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage('assets/images/saree.jpeg'),
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8),

              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          sender,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Text(
                          time,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        width:
                            controller.mobileDeviceWidth.value, // Random width

                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                          child: Text(message, style: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
}
