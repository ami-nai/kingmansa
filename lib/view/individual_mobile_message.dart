import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/resources.dart';
import 'package:kingmansa/view/web_message_screen.dart';

Widget buildIndivisualMobileMessage(BuildContext context) {
  final controller = Get.put(ViewController());
  final mWidth = MediaQuery.of(context).size.width;
  final mHeight = MediaQuery.of(context).size.height;
  final messageController = TextEditingController();

  return SizedBox(
    width: mWidth,
    height: mHeight,
    child: Flexible(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
          child: Column(
            // primary: false,
            // shrinkWrap: true,
            // padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(3, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Chat Header
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: cardColor,
                        border: Border(
                          bottom: BorderSide(color: Colors.grey[300]!),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kristin Watson',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Local Time: 2:24 AM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Inquiry Section
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        color: Colors.white,
                        elevation: 8,
                        shadowColor: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.pink[50],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Inquiry',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Text('S2541566'),
                                      const Text('Min. order: 2'),
                                      const SizedBox(height: 8),
                                      const Text('Quantity'),
                                      const Text('2 Piece/s'),
                                      const SizedBox(height: 8),
                                      const Text('Detailed requirements'),
                                      const Text(
                                        'Hello,\nI\'m interested in your product and would like to know more details. I look forward to hearing from you.\nThank you.',
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'ID: 50000096581474',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(350, 30),
                                  backgroundColor: Colors.amber,
                                ),
                                child: Text(
                                  "Requirements",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Message List
                    WebMessageScreen().buildMessageBubble(
                      context,
                      'Kristin Watson',
                      '2:24 AM',
                      'Hello, I\'m interested in your product and would like to know more details. I look forward to hearing from you.\nThank you.',
                      isMe: false,
                    ),
                    Obx(() {
                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return WebMessageScreen().buildMessageBubble(
                            context,
                            controller.messages[index]['sender'],
                            controller.messages[index]['time'],
                            controller.messages[index]['text'],
                            isMe: controller.messages[index]['isMe'],
                          );
                        },
                        itemCount: controller.messages.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      );
                    }),

                    // Message Input
                    Container(
                      padding: const EdgeInsets.all(16),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          //Search bar
                          Container(
                            width: (mWidth < 900) ? (mWidth * 0.5) : (mWidth < 1070) ? ((mWidth - 280 - 280 - 200 - 15) * 0.8) : ((mWidth - 280 - 280 - 200 - 15) * 0.5),
                            height: 40,
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
                              controller: messageController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Write message...',
                                hoverColor: Colors.white,
                                focusColor: Colors.white30,
                                hintStyle: TextStyle(color: Colors.black),
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

                          const SizedBox(width: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: cardColor,
                            ),
                            onPressed: () {
                              if (messageController.text.isNotEmpty) {
                                // Add the new message to the reactive list
                                controller.messages.add({
                                  'sender': 'Albert Flores',
                                  'time': 'Now',
                                  'text': messageController.text,
                                  'isMe': true,
                                });

                                // Clear the message input field after sending
                                messageController.clear();
                              }
                            },
                            child: Icon(Icons.send_rounded, color: iconColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
