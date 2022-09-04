import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            children: [
              Container(
                  height: 485,
                  width: 340,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200),
                  child: Column(
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/sea1.jpg',
                                  height: 400, width: 330, fit: BoxFit.cover)),
                        ),
                        Positioned(
                            top: 10,
                            right: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor:
                                    Colors.transparent.withOpacity(0.5),
                                child: Image.asset(
                                  'assets/heart.png',
                                  fit: BoxFit.cover,
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            )),
                        Positioned(
                            top: 10,
                            left: 20,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.transparent,
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.blueGrey,
                                  )),
                            )),
                      ]),
                      Padding(
                        padding: EdgeInsets.only(top: 3, left: 10),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text("Hunza",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        // ignore: deprecated_member_use
                                        Icons.location_on,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      Text("Hunza Lake",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.map,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("37 Km from you",
                                          style: TextStyle(
                                            fontSize: 16,
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
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  SizedBox(width: 3),
                  Text(
                    "5.0",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 3),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 3),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(width: 3),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(width: 3),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud\nexercitation ullamco laboris .",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                       //color: Colors.green
                        ),
                    child: Column(
                      children: [
                        Row(
                          children:  [Text("Total Price", style: TextStyle(fontSize: 16,color: Colors.grey.shade700),)],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children:  [
                            Text("\$ ${50.00}", style: TextStyle(fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),),
                            SizedBox(width: 2,),
                            Text("per day",
                              style: TextStyle(
                                   color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ))
            ],
          ),
       ] ),
      ),
     ) );
  }
}
