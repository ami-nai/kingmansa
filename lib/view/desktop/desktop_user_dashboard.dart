import 'package:flutter/material.dart';
import 'package:kingmansa/constants.dart';

class DesktopUserDashboard extends StatelessWidget {
  DesktopUserDashboard({super.key});

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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 40, 100, 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 300,
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
                child: Column(
                  children: <Widget>[
                    Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1000),
                    ElevatedButton(onPressed: () {}, child: Icon(Icons.logout)),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      GridView.builder(
                        shrinkWrap:
                            true, // Ensures GridView takes only the required height
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.width *
                                                  0.08,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.shopping_cart_rounded,
                                            color: Colors.white,
                                            size:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
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
                      Container(
                        width: 800,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          color: orderCardColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(
                                0,
                                3,
                              ), // changes position of shadow
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
                                    Text(
                                      "Orders",
                                      style: TextStyle(
                                        color: cardColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('All'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[900],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            side: BorderSide(
                                              color: iconColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Confirming'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[900],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            side: BorderSide(
                                              color: iconColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Unpaid'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[900],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            side: BorderSide(
                                              color: iconColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Delivering'),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.blueGrey[900],
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            side: BorderSide(
                                              color: iconColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Container(
                                    child: Text(
                                      "No Orders Yet",
                                      style: TextStyle(
                                        color: cardColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20.0),

                      Container(
                        width: 800,
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
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Other recommendations for your business",
                                style: TextStyle(
                                  color: cardColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 20),

                              GridView.builder(
                                shrinkWrap:
                                    true, // Ensures GridView takes only the required height

                                itemCount: 10,
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 250,
                                      mainAxisSpacing: 20,
                                      crossAxisSpacing: 20,
                                      childAspectRatio: 250 / 300,
                                    ),
                                itemBuilder: (context, index) {
                                  return LayoutBuilder(
                                    builder: (context, constraints) {
                                      double containerHeight =
                                          constraints.maxHeight;
                                      double containerWidth =
                                          constraints.maxWidth;
                                      return Container(
                                        // height: 800,
                                        // width: 300,
                                        // height: 500,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: Colors.red,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                              child: Image.asset(
                                                "assets/images/crop1.jpeg",
                                                height: containerHeight / 2,
                                                width: containerWidth,
                                                fit: BoxFit.fill,
                                              ),
                                            ),

                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "A grade quality corm from agro",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold,
                                                  ),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                Text(
                                                  "A grade quality corm from agro, grade quality corm from agro",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                            
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: containerWidth / 2.5,
                                                      height: containerHeight / 8,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              buttonColor,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  20,
                                                                ),
                                                            side: BorderSide(
                                                              color:
                                                                  buttonColor,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Inquire now',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 10),
                                                    SizedBox(
                                                      width: containerWidth / 2.5,
                                                      height: containerHeight / 10,
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  20,
                                                                ),
                                                            side: BorderSide(
                                                              color:
                                                                  iconColor,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Chat now',
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                             
                             
                             
                              SizedBox(height: 20),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: iconColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(color: iconColor),
                                    ),
                                  ),
                                  child: Text(
                                    'VIEW MORE',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
