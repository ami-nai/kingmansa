import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingmansa/Controllers/view_controller.dart';
import 'package:kingmansa/constants.dart';
import 'package:kingmansa/resources.dart';

Widget buildMobileDashboard() {
  final controller = Get.put(ViewController());
  return Column(
    children: <Widget>[
      SizedBox(height: 20.0), // Add spacing between the dashboard and grid
      GridView.builder(
        shrinkWrap: true, // Ensures GridView takes only the required height
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
                            (index + 1).toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.08,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          if(index == 0)...[
                            Container(
                            width: 60,
                            child: Stack(
                              children: [
                                // Base Image
                                Container(
                                  height:
                                      30, // Set height and width to be equal
                                  width: 30,
                                ),

                                // Overlay Image
                                Positioned(
                                  bottom:
                                      0, // Position the overlay image at the bottom
                                  left:
                                      15, // Position the overlay image at the right
                                  child: Container(
                                    height:
                                        30, // Adjust the size of the overlay image
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape
                                          .circle, // Ensures the overlay image is circular
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      ), // Optional border
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(10000),
                                      child: Image.asset(
                                        chatListItems[index +
                                            1]['icon'], // Replace with your overlay image path
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom:
                                      0, // Position the overlay image at the bottom
                                  left:
                                      25, // Position the overlay image at the right
                                  child: Container(
                                    height:
                                        30, // Adjust the size of the overlay image
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape
                                          .circle, // Ensures the overlay image is circular
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      ), // Optional border
                                    ),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(10000),
                                      child: Image.asset(
                                        chatListItems[index +
                                            1]['icon'], // Replace with your overlay image path
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        
                          ]else...[
                            Icon(Icons.shopping_cart,
                            color: Colors.white, size: 30,)
                          ],
                          
                        
                        
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

      SizedBox(height: 20.0), // Add spacing between the grid and the bottom
      Container(
        //width: 800,
        height: 300,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('All', style: TextStyle(fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: iconColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: iconColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Confirming'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: orderCardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: iconColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Unpaid'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: orderCardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: iconColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Delivering'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: orderCardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: iconColor),
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

      Obx(() {
        return Container(
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
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap:
                      true, // Ensures GridView takes only the required height

                  itemCount: controller.itemCount.value,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 250 / 350,
                  ),
                  itemBuilder: (context, index) {
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        double containerHeight = constraints.maxHeight;
                        double containerWidth = constraints.maxWidth;
                        return Container(
                          // height: 800,
                          // width: 300,
                          // height: 500,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(
                                  2,
                                  2,
                                ), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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

                              SizedBox(
                                height: containerHeight / 2,
                                width: containerWidth,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        10,
                                        8,
                                        10,
                                        0,
                                      ),
                                      child: Text(
                                        "A grade quality corm from agro",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          width:
                                              // containerWidth < 200
                                              // ? 70
                                              // :
                                              containerWidth / 1.5,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.fromLTRB(
                                                0,
                                                0,
                                                0,
                                                0,
                                              ),
                                              backgroundColor: buttonColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide(
                                                  color: buttonColor,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              'Inquire now',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    // containerWidth <
                                                    //     200
                                                    // ? 10
                                                    // :
                                                    12,
                                                // fontWeight:
                                                //     FontWeight
                                                //         .bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
                    onPressed: () {
                      controller.itemCount.value += 10;
                    },
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
        );
      }),
    ],
  );
}
