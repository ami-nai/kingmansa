import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/view/mobile/mobile_user_dashboard.dart';
import 'package:kingmansa/view/web_message_screen.dart';

class MobileMessageScreen extends StatelessWidget {
  MobileMessageScreen({super.key});
  final mobileController = Get.put(ViewController());
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mobileController.mobileDeviceWidth.value = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('KINGMANSA'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(child: Text('Dashboard')),
              const PopupMenuItem(child: Text('Message')),
              const PopupMenuItem(child: Text('My Orders')),
              const PopupMenuItem(child: Text('Buying Leads')),
              const PopupMenuItem(child: Text('Transactions')),
              const PopupMenuItem(child: Text('Update Profile')),
              const PopupMenuItem(child: Text('Logout')),
            ],
          ),
        ],
      ),
      body: SafeArea(
        
        child: Column(
          children: [
            
            
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [

                  // Dashboard Header
                  
                  SizedBox(height: 20),
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
                                    child: Icon(Icons.dashboard_rounded, color: iconColor),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ), // Add spacing between icon and text
                                  Text("Dashboard"),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(Icons.looks_one_rounded, color: iconColor),
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
                              mobileController.showMenu.value =
                                  !mobileController.showMenu.value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                
              child: const Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kristin Watson', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('Local Time: 2:24 AM', style: TextStyle(color: Colors.white)),
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
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(350, 30),
                        backgroundColor: Colors.amber,
                      ),
                      child: Text(
                        "Requirements",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            
            // Message
                //  ListView(
                //   shrinkWrap: true,
                //   physics: NeverScrollableScrollPhysics(),
                  
                //   children: [
                //      WebMessageScreen().buildMessageBubble(
                //       context,
                //     'Kristin Watson',
                //     'Yesterday 10:30 PM',
                //     'Hi Kristin Watson! Your appointment is approaching tomorrow with (Kristin Watson) at 12:30pm.',
                //     isMe: true,
                //   ),
                  
                //   WebMessageScreen().buildMessageBubble(
                //     context,
                //     'Albert Flores',
                //     'Yesterday 10:30 PM',
                //     'Hi Kristin Watson! how are you',
                //     isMe: false,
                //   ),
                  
                //   WebMessageScreen().buildMessageBubble(
                //     context,
                //     'Kristin Watson',
                //     'Yesterday 10:30 PM',
                //     'Fine sdlafkjsdlfjiifadskg aroigjaoirfj joi jj i jjagfljgioradfmgadjgargfadkfj aojglangajgadfg',
                //     isMe: true,
                //   ),
                  
                //   WebMessageScreen().buildMessageBubble(
                //     context,
                //     'Albert Flores',
                //     'Yesterday 10:30 PM',
                //     'Send me the RFQ falsdkfjoiajrfoiwaejfoijgoirj gaoijgoiar giarejg oaij ',
                //     isMe: false,
                //   ),

                //   Obx((){
                //     if(mobileController.giveNewMessageCount.value < mobileController.messageLimit.value){
                //       mobileController.giveNewMessageCount.value++;
                //       return WebMessageScreen().buildMessageBubble(
                //         context,
                //         'Albert Flores',
                //         'Now',
                //         'I have sent you the RFQ, please check it out.',
                //         isMe: false,
                //       );
                //     }
                //     else{
                //         return SizedBox.shrink();
                //       }

                //   })
                
                //   ],
                //  ),




              ],
            )
           )


                ],
              ),





            ),
            
            // Message Input
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey[300]!))),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
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
                  ElevatedButton(
                    onPressed: () {
                      if (messageController.text.isNotEmpty) {
                        mobileController.messageLimit.value++;
                        // Here you can add the logic to send the message
                        print('Message sent: ${messageController.text}');
                        // Clear the message input field after sending
                        messageController.clear();
                      }

                    },
                    child: const Text('Send'),
                  ),
                ],
              ),
            ),
          
          
          
          ],
        ),
      ),
    
    
    );
  }
}