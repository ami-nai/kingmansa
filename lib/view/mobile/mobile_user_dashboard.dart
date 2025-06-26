import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:kingmansa/view/dimensions.dart';

class MobileUserDashboard extends StatelessWidget {
  const MobileUserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(134, 0, 0, 9),
        title: Row(
          children: <Widget>[
            Icon(Icons.dashboard, color: Colors.white),
            Spacer(),
            Icon(Icons.message_outlined, color: Colors.white),
            Icon(Icons.notifications_none_outlined, color: Colors.white),
            Row(
              children: <Widget>[
                Icon(Icons.account_circle_outlined, color: Colors.white),
                Text('Trade PRO', style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 5/1.5,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                  // color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            
                            decoration: 
                              BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200],
                              ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10.0),
                                  child: Icon(Icons.dashboard_rounded),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ), // Add spacing between icon and text
                                Text("Dashboard"),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.looks_one_rounded),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: Icon(Icons.menu),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text("hi"), // Center the text to avoid layout issues
              ),
            ],
          ),
        );}
      ),
    );
  }
}
