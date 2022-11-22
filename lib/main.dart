import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 12.79,
                  height: 11.43,
                  child: Image.asset('assets/Vector1.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 20.88,
                  height: 23.78,
                  child: Image.asset('assets/Vector.png'),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 105.42),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 20,
                  ),
                  const Text(
                    'Dhaka, Banassre',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 70,
            padding: const EdgeInsets.fromLTRB(35, 10, 35, 20),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search',
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: PageView(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Image.asset('assets/banner.png'),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Image.asset('assets/banner.png'),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            height: 268.51,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 13),
                  child: Container(
                    width: 173.32,
                    height: 248.51,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 25.26),
                          width: 99.89,
                          height: 79.43,
                          child: Image.asset(
                            'assets/banana.png',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 25.2),
                          child: const Text('Organic Bananas',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            '7pcs, Priceg',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 35, 0, 0),
                          child: Row(
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: const Text('\$4.99'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(Icons.add),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 173.32,
                    height: 248.51,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 25.26),
                          width: 99.89,
                          height: 79.43,
                          child: Image.asset(
                            'assets/pngfuel.png',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 25.2),
                          child: const Text('Red Apple',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            '1kg, Priceg',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 35, 0, 0),
                          child: Row(
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: const Text('\$4.99'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(Icons.add),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
            child: Row(
              children: [
                const Text(
                  'Groceries',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(220, 0, 0, 0),
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 100,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                width: 248.19,
                height: 105,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(17)),
                child: Row(
                  children: [
                    Image.asset('assets/pulses.png'),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text('Pulses'),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  width: 248.19,
                  height: 105,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(17)),
                  child: Row(
                    children: [
                      Image.asset('assets/rice.png'),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text('Rice'),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            height: 268.51,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 13),
                  child: Container(
                    width: 173.32,
                    height: 248.51,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 25.26),
                          width: 99.89,
                          height: 79.43,
                          child: Image.asset(
                            'assets/pngfuel4.png',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 25.2),
                          child: const Text('Beef Bone',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            '1kg, Priceg',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 35, 0, 0),
                          child: Row(
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: const Text('\$4.99'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(Icons.add),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 173.32,
                    height: 248.51,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 25.26),
                          width: 99.89,
                          height: 79.43,
                          child: Image.asset(
                            'assets/pngfuel5.png',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 25.2),
                          child: const Text('Broiler Chicken',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: const Text(
                            '1kg, Priceg',
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(30, 35, 0, 0),
                          child: Row(
                            children: [
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: const Text('\$4.99'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 30),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                  ),
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    child: const Icon(Icons.add),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Account'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
