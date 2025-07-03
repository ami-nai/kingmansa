import 'package:flutter/material.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/view/chat_list.dart';
import 'package:kingmansa/view/individual_mobile_message.dart';

Widget buildWebMessenger(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  

  return Stack(
    children: [SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: (screenWidth - 280 - 200) * 0.95,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Conversation List - Fixed width but scrollable
                // Hide chat list on smaller screens
                if(screenWidth >=1070)...[
                  Container(
                  width: 280,
                  constraints: BoxConstraints(
                    maxHeight: screenHeight,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        buildChatList(context),
                      ],
                    ),
                  ),
                ),
                
                ],
                
                SizedBox(width: 8), // Reduced spacing between columns
                
                // Chat Area - Flexible width that adapts to remaining space
                Flexible(
                  child: buildIndivisualMobileMessage(context),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    
    if(screenWidth >= 1070)...[
      Positioned(
      top: 0, right: 0, left: 0,
      height: 72,
      child: Container(
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        
        child: Row(
          children: [
            SizedBox(width: 10,),
            SizedBox(
              width: 280,
              child: Text('Message', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
            SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Katrina Watson', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                Text('Local Time: 10:30 AM', style: TextStyle(color: Colors.white,fontSize: 12),),
              ],
            ),

          ],
        ),
      )
      
      )

    ]
    ]
  );
}




