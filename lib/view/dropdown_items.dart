// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// Widget dropDownItems(String menuName) {
//   final menuController = Get.put(MenuController());
//   return
//     AspectRatio(
//                   aspectRatio: 5 / 1,

//                   child: Container(
//                     // margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           spreadRadius: 1,
//                           blurRadius: 10,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     // color: Colors.grey[200],
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.grey[200],
//                               ),
//                               child: Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.fromLTRB(
//                                       10.0,
//                                       10,
//                                       0,
//                                       10.0,
//                                     ),
//                                     child: Icon(Icons.dashboard_rounded),
//                                   ),
//                                   SizedBox(
//                                     width: 10.0,
//                                   ), // Add spacing between icon and text
//                                   Text("Dashboard"),
//                                   Spacer(),
//                                   Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Icon(Icons.looks_one_rounded),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
//                           child: Icon(Icons.menu),
//                         ),
//                       ],
//                     ),
                  
//                   ),
//                 );
                
// }