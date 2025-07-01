import 'package:flutter/material.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/view/web_message_screen.dart';

Widget buildIndivisualMobileMessage(BuildContext context) {
  final mWidth = MediaQuery.of(context).size.width;
  final mHeight = MediaQuery.of(context).size.height;
  return Container(
    width: mWidth,
    height: mHeight,
    child: Column(
      children: [
        Flexible(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            children: [
              SizedBox(height: 20),
              // Chat Header
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
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Local Time: 2:24 AM',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
    
                    // Inquiry
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                        style: TextStyle(color: Colors.grey[600]),
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
    
                    // Message
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
    
                      children: [
                        WebMessageScreen().buildMessageBubble(
                          'Kristin Watson',
                          'Yesterday 10:30 PM',
                          'Hi Kristin Watson! Your appointment is approaching tomorrow with (Kristin Watson) at 12:30pm.',
                          isMe: true,
                        ),
    
                        WebMessageScreen().buildMessageBubble(
                          'Albert Flores',
                          'Yesterday 10:30 PM',
                          'Hi Kristin Watson! how are you',
                          isMe: false,
                        ),
    
                        WebMessageScreen().buildMessageBubble(
                          'Kristin Watson',
                          'Yesterday 10:30 PM',
                          'Fine sdlafkjsdlfjiifadskg aroigjaoirfj joi jj i jjagfljgioradfmgadjgargfadkfj aojglangajgadfg',
                          isMe: true,
                        ),
    
                        WebMessageScreen().buildMessageBubble(
                          'Albert Flores',
                          'Yesterday 10:30 PM',
                          'Send me the RFQ falsdkfjoiajrfoiwaejfoijgoirj gaoijgoiar giarejg oaij ',
                          isMe: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    
        // Message Input
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey[300]!)),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write message...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: const Text('Send')),
            ],
          ),
        ),
      ],
    ),
  );
}
