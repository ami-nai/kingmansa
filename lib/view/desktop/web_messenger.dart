import 'package:flutter/material.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/view/message_bubble.dart';

Widget buildWebMessenger() {
  return Expanded(
    child: Column(
      children: <Widget>[
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

                                              children: [buildMessageBubble(
                                                      'Kristin Watson',
                                                      'Yesterday 10:30 PM',
                                                      'Hi Kristin Watson! Your appointment is approaching tomorrow with (Kristin Watson) at 12:30pm.',
                                                      isMe: true,
                                                    ),
                                                    buildMessageBubble(
                                                      'Albert Flores',
                                                      'Yesterday 10:30 PM',
                                                      'Hi Kristin Watson! how are you',
                                                      isMe: false,
                                                    ),

                                                buildMessageBubble(
                                                      'Kristin Watson',
                                                      'Yesterday 10:30 PM',
                                                      'Fine sdlafkjsdlfjiifadskg aroigjaoirfj joi jj i jjagfljgioradfmgadjgargfadkfj aojglangajgadfg',
                                                      isMe: true,
                                                    ),

                                                buildMessageBubble(
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
      ]
    ));
}