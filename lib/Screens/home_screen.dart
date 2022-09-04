import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        size: 35,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Safayet Ahmad",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 132),
                      Icon(
                        Icons.play_circle_outline_rounded,
                        size: 35,
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 275,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "Search for a place...",
                            hintStyle: TextStyle(color: Colors.grey.shade700),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 45,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.menu),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best Place For You!",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          )),
                      Text(
                        "View All",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: const [
                        Slider(
                          imageUrl: 'assets/sea5.jpg',
                          ratings: '5.0',
                          subtitle: 'Hunza Lake',
                          title: 'Hunza, KPK (Pakistan)',
                        ),
                        SizedBox(width: 10),
                        Slider(
                          imageUrl: 'assets/sea2.jpg',
                          ratings: '5.0',
                          subtitle: 'Omara Beach',
                          title: 'Omara, Baluchistan (PK)',
                        ),
                        SizedBox(width: 10),
                        Slider(
                          imageUrl: 'assets/sea3.jpg',
                          ratings: '5.0',
                          subtitle: 'Naran River',
                          title: 'Naran, KPK (Pakistan)',
                        ),
                        SizedBox(width: 10),
                        Slider(
                          imageUrl: 'assets/sea6.jpg',
                          ratings: '4.8',
                          subtitle: 'Mount Beach View',
                          title: 'Gawadar, baluchistan (PK)',
                        ),
                      ])),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Explore More",
                                style: TextStyle(
                                    fontSize: 21, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade800),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: const [
                              CircularStories(
                                imgUrl: 'assets/sea9.jpg', title: 'Indonesia',
                              ),
                              SizedBox(width: 10),
                              CircularStories(
                                imgUrl: 'assets/sea1.jpg', title: 'Pakistan',
                              ),
                              SizedBox(width: 10),
                              CircularStories(
                                imgUrl: 'assets/sea10.jpg', title: 'Srilanka',
                              ),
                              SizedBox(width: 10),
                              CircularStories(
                                imgUrl: 'assets/sea2.jpg', title: 'China',
                              ),
                              SizedBox(width: 10),
                              CircularStories(
                                imgUrl: 'assets/sea7.jpg', title: 'Bangladesh',
                              ),
                              SizedBox(width: 10),
                              CircularStories(
                                imgUrl: 'assets/sea3.jpg', title: 'Maldives',
                              ),
                              SizedBox(width: 10),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  )
                ])
     ) );
  }
}

class CircularStories extends StatelessWidget {
  const CircularStories({
    Key? key,
    required this.imgUrl, required this.title,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 34,
          backgroundColor: Colors.green,
          child: CircleAvatar(
            radius: 33,
            backgroundColor: Colors.transparent,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                  height: 65,
                  width: 65,
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(title, style: TextStyle(fontWeight: FontWeight.w400),)
      ],
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.ratings,
  }) : super(key: key);

  final String imageUrl, ratings;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade200),
      child: Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen()
                        ),
                      );
                    },
                    child: Image.asset(imageUrl,
                        height: 200, width: 330, fit: BoxFit.cover),
                  )),
            ),
            Positioned(
                top: 10,
                right: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/heart.png',
                      fit: BoxFit.cover,
                      height: 20,
                      width: 20,
                    ),
                  ),
                )),
          ]),
          Padding(
            padding: EdgeInsets.only(top: 3, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(subtitle,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            // ignore: deprecated_member_use
                            Icons.location_on,
                            color: Colors.green,
                            size: 20,
                          ),
                          Text(title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 20,
                          ),
                          Text(ratings,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
