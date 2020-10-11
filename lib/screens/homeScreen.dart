import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: ConvexAppBar(
          cornerRadius:15,
          color: Colors.black,
          backgroundColor: Colors.white,
            items: [
            TabItem(icon: Icons.home, title: 'Home',),
            TabItem(icon: Icons.shopping_cart, title: 'Order'),
            TabItem(icon: Icons.category, title: 'Category'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 2,
          activeColor: Colors.redAccent,
           //optional, default as 0
          onTap:(int i) => print('click index=$i'),
        ),

      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Food House",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Icon(Icons.more_vert)
                    ]),
              ),
              Container(
                color: Colors.white30,
                margin: EdgeInsets.only(left: 15,right: 15),
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      textColor: Colors.redAccent,
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text("More Category"),
                    )
                  ],
                ),
              ),

                   Container(

                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        IconButton(
                            icon: Image.asset(
                              "assets/icons/kf1.png",
                              height: 80,
                              width: 80,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            onPressed: null),
                        Text("All"),
                      ]),
                      Column(children: [
                        IconButton(
                            icon: Image.asset(
                              "assets/icons/salad.png",
                              height: 80,
                              width: 80,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            onPressed: null),
                        Text("Salad"),
                      ]),
                      Column(children: [
                        IconButton(
                            icon: Image.asset(
                              "assets/icons/cake.png",
                              height: 80,
                              width: 80,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            onPressed: null),
                        Text("cake"),
                      ]),
                      Column(children: [
                        IconButton(
                            icon: Image.asset(
                              "assets/icons/snack.png",
                              height: 80,
                              width: 80,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 20),
                            onPressed: null),
                        Text("snacks"),
                      ]),
                    ],
                  ),
                ),
              Container(
                height: 370,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 5, right: 0, left: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Align(alignment: Alignment.center ,),
                                  Image.asset(
                                    "assets/images/dish1.png",
                                    height: 120,
                                    width: 120,
                                  ),
                                  Text("Sea food with vegetable",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),

                                  SmoothStarRating(
                                    color: Colors.amber,
                                    rating: 5.0,
                                    isReadOnly: true,
                                    size: 20,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half,
                                    defaultIconData: Icons.star_border,
                                    starCount: 5,
                                    allowHalfRating: true,
                                    spacing: 1.0,
                                  ),

                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                  top: 40, bottom: 5, right: 5, left: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Align(alignment: Alignment.center ,),
                                  Image.asset(
                                    "assets/images/sandwitch.png",
                                    height: 120,
                                    width: 120,
                                  ),
                                  Text("Sandwich ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),

                                  SmoothStarRating(
                                    color: Colors.amber,
                                    rating: 5.0,
                                    isReadOnly: true,
                                    size: 20,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half,
                                    defaultIconData: Icons.star_border,
                                    starCount: 5,
                                    allowHalfRating: true,
                                    spacing: 1.0,
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      );
                    }),
              ),

              /*Container(
                  height: 40,
                  width: 170,
                  margin: EdgeInsets.only(right: 180, left: 5),
                  padding: EdgeInsets.only(right: 10, left: 15),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Text("See more",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: Image.asset(
                            "assets/icons/kf1.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  )),

*/
            ],
          ),
        ),
      ),
    );
  }
}
