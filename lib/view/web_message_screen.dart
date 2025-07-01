import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/view/dimensions.dart';
import 'package:kingmansa/view/mobile/mobile_user_dashboard.dart';

class WebMessageScreen extends StatelessWidget {
  WebMessageScreen({super.key});

  final controller = Get.put(ViewController());

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        windowWidth * 0.08,
        40,
        windowWidth * 0.08,
        40,
      ),
      child: Scaffold(
        body: Row(
          children: [
            // Left Side Menu
            Container(
              width: 250,
              color: Colors.grey[100],
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'KING MANSA',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  buildMenuTile('Dashboard', Icons.dashboard),
                  buildMenuTile('Message', Icons.message, selected: true),
                  buildMenuTile('My Orders', Icons.shopping_bag),
                  buildMenuTile('Buying Leads', Icons.leaderboard),
                  buildMenuTile('Transactions', Icons.payment),
                  buildMenuTile('Update Profile', Icons.person),
                  const Spacer(),
                  buildMenuTile('Logout', Icons.logout),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            // Main Content
            Expanded(
              child: Column(
                children: [
                  // Header
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Message',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.search),
                      ],
                    ),
                  ),

                  // Chat List
                  Expanded(
                    child: Row(
                      children: [
                        // Conversation List
                        Container(
                          width: 280,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Container(
                                              padding: const EdgeInsets.all(16),
                                              decoration: BoxDecoration(
                                                color: cardColor,
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.grey[300]!,
                                                  ),
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
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Kristin Watson',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Local Time: 2:24 AM',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    
                                    Expanded(
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
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'Search',
                                            hoverColor: Colors.white,
                                            focusColor: Colors.white30,
                                            hintStyle: TextStyle(
                                              color: Colors.black,
                                            ),
                                            suffixIcon: const Icon(
                                              Icons.search,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide.none,
                                            ),

                                            contentPadding:
                                                const EdgeInsets.symmetric(
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
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
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
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ListView.builder(
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                          color: index == 0
                                              ? cardColor
                                              : Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),

                                        child: ListTile(
                                          contentPadding: EdgeInsets.fromLTRB(
                                            10,
                                            0,
                                            10,
                                            0,
                                          ),

                                          leading: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              1000,
                                            ),
                                            child: Image.asset(
                                              'assets/images/saree.jpeg',
                                              fit: BoxFit.cover,
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                          title: Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 8,
                                            ),
                                            child: Text(
                                              'Kristin Watson',
                                              style: TextStyle(
                                                color: index != 0
                                                    ? Colors.black
                                                    : Colors.white,
                                                fontSize: 13,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          subtitle: Text(
                                            '+88 012 3456 7890',
                                            style: TextStyle(
                                              color: index != 0
                                                  ? Colors.black
                                                  : Colors.white,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 10,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          trailing: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '10:30',
                                                style: TextStyle(
                                                  color: index != 0
                                                      ? Colors.black
                                                      : Colors.white,
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(1000),
                                                child: Image.asset(
                                                  'assets/images/saree.jpeg',
                                                  fit: BoxFit.cover,
                                                  width: 15,
                                                  height: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                          onTap: () {},
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      
                        // Chat Area
                        Expanded(
                          child: SafeArea(
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                    padding: const EdgeInsets.all(16),
                                    children: [
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
                                              offset: Offset(
                                                3,
                                                3,
                                              ), // changes position of shadow
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
                                                  bottom: BorderSide(
                                                    color: Colors.grey[300]!,
                                                  ),
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
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Kristin Watson',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Local Time: 2:24 AM',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
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
                                                  padding: const EdgeInsets.all(
                                                    16,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                10,
                                                              ),
                                                          color:
                                                              Colors.pink[50],
                                                        ),

                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                16.0,
                                                              ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              const Text(
                                                                'Inquiry',
                                                                style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 16,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 8,
                                                              ),
                                                              const Text(
                                                                'S2541566',
                                                              ),
                                                              const Text(
                                                                'Min. order: 2',
                                                              ),
                                                              const SizedBox(
                                                                height: 8,
                                                              ),
                                                              const Text(
                                                                'Quantity',
                                                              ),
                                                              const Text(
                                                                '2 Piece/s',
                                                              ),
                                                              const SizedBox(
                                                                height: 8,
                                                              ),
                                                              const Text(
                                                                'Detailed requirements',
                                                              ),
                                                              const Text(
                                                                'Hello,\nI\'m interested in your product and would like to know more details. I look forward to hearing from you.\nThank you.',
                                                              ),
                                                              const SizedBox(
                                                                height: 8,
                                                              ),
                                                              Text(
                                                                'ID: 50000096581474',
                                                                style: TextStyle(
                                                                  color: Colors
                                                                      .grey[600],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 10),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        style:
                                                            ElevatedButton.styleFrom(
                                                              minimumSize: Size(
                                                                350,
                                                                30,
                                                              ),
                                                              backgroundColor:
                                                                  Colors.amber,
                                                            ),
                                                        child: Text(
                                                          "Requirements",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                              physics:
                                                  NeverScrollableScrollPhysics(),

                                              children: [
                                                WebMessageScreen()
                                                    .buildMessageBubble(
                                                      context,
                                                      'Kristin Watson',
                                                      'Yesterday 10:30 PM',
                                                      'Hi Kristin Watson! Your appointment is approaching tomorrow with (Kristin Watson) at 12:30pm.',
                                                      isMe: true,
                                                    ),

                                                WebMessageScreen()
                                                    .buildMessageBubble(
                                                      context,
                                                      'Albert Flores',
                                                      'Yesterday 10:30 PM',
                                                      'Hi Kristin Watson! how are you',
                                                      isMe: false,
                                                    ),

                                                WebMessageScreen()
                                                    .buildMessageBubble(
                                                      context,
                                                      'Kristin Watson',
                                                      'Yesterday 10:30 PM',
                                                      'Fine sdlafkjsdlfjiifadskg aroigjaoirfj joi jj i jjagfljgioradfmgadjgargfadkfj aojglangajgadfg',
                                                      isMe: true,
                                                    ),

                                                WebMessageScreen()
                                                    .buildMessageBubble(
                                                      context,
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
                                    border: Border(
                                      top: BorderSide(color: Colors.grey[300]!),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Write message...',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                  horizontal: 16,
                                                ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Send'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }

  Widget buildMenuTile(String title, IconData icon, {bool selected = false}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: selected,
      selectedTileColor: Colors.blue[50],
      selectedColor: Colors.blue,
      onTap: () {},
    );
  }

  Widget buildMessageBubble(
    BuildContext context,
    String sender,
    String time,
    String message, {
    required bool isMe,
  }) {
    final mWidth = MediaQuery.of(context).size.width;
    return Align(
      //alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: 
      Container(
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
                        width: mWidth - 30, // Random width

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
                          child: Text(message, style: TextStyle(color: Colors.black, fontSize: 15)),
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
                            mWidth - 30, // Random width

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
}
