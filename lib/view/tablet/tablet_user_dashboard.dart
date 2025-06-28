import 'package:flutter/material.dart';
import 'package:kingmansa/constants.dart';

class TabletUserDashboard extends StatelessWidget {
  TabletUserDashboard({super.key});

  final List<String> gridItems = [
    'Unread Message',
    'Toral Orders',
    'Processing Order',
    'Complete Orders',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cardColor,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(200, 40, 200, 40),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                AspectRatio(
                  aspectRatio: 5 / 1,

                  child: Container(
                    // margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
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
                SizedBox(
                  height: 20.0,
                ), // Add spacing between the dashboard and grid
                GridView.builder(
                  shrinkWrap:
                      true, // Ensures GridView takes only the required height
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.6,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                // color: Colors.green,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                            0.08,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shopping_cart_rounded,
                                      color: Colors.white,
                                      size:
                                          MediaQuery.of(context).size.width *
                                          0.08,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Divider(thickness: 0.5, height: 0),
                            Text(
                              "${gridItems[index]}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                //   backgroundColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                SizedBox(
                  height: 20.0,
                ), // Add spacing between the grid and the bottom
                AspectRatio(
                  aspectRatio: 5 / 3.5,
                  child: Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      color: orderCardColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                  Text("Orders", style: TextStyle(color: cardColor, fontSize: 20, fontWeight: FontWeight.bold),),
                                ]),
                              ),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Text('All'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blueGrey[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side:BorderSide(color: iconColor),
                                              ),
                                            )
                                        ),
                                        SizedBox(width: 5,),
                                        ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Confirming'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blueGrey[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side:BorderSide(color: iconColor),
                                              ),
                                            )
                                        ),
                                        SizedBox(width: 5,),
                                    ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Unpaid'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blueGrey[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side:BorderSide(color: iconColor),
                                              ),
                                            )
                                        ),
                                        SizedBox(width: 5,),
                                    ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Delivering'),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blueGrey[900],
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                side:BorderSide(color: iconColor),
                                              ),
                                            )
                                        ),
                                        SizedBox(width: 5,),
                                    
                                      
                                    ],),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      child: Text("No Orders Yet",
                                        style: TextStyle(
                                          color: cardColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )

                            ],
                        ),
                      )
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}