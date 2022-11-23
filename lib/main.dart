import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<listt> ListImage = [
    listt('assets/banana.png', 'Organic Bananas', '7pcs, Priceg', '\$4.99'),
    listt('assets/pngfuel.png', 'Red Apple', '1kg, Priceg', '\$4.99'),
  ];

  List<listt> ListImage1 = [
    listt('assets/chili.png', 'Chili', '1kg, Priceg', '\$4.99'),
    listt('assets/pngfuel3.png', 'Ginger', '1kg, Priceg', '\$4.99'),
  ];

  List<listt> ListImage2 = [
    listt('assets/pngfuel4.png', 'Beef Bone', '1kg, Priceg', '\$4.99'),
    listt('assets/pngfuel5.png', 'Broiler Chicken', '1kg, Priceg', '\$4.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: appbar(),
            ),
            body: Container(
              margin: EdgeInsets.all(15),
              child: ListView(
                children: [
                  search(),
                  banner(),
                  textT('Exclusive Offer'),
                  Container(
                      height: 248,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ListImage.length,
                          itemBuilder: (context, index) {
                            final item = ListImage[index];
                            return Container(
                              child: product(
                                  item.img, item.title, item.text, item.price),
                            );
                          })),
                  textT('Best Selling'),
                  Container(
                      height: 248,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ListImage1.length,
                          itemBuilder: (context, index) {
                            final item = ListImage1[index];
                            return Container(
                              child: product(
                                  item.img, item.title, item.text, item.price),
                            );
                          })),
                  textT('Groceries'),
                  Container(
                      height: 105,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          sp1(),
                          sp2(),
                        ],
                      )),
                  Container(
                      height: 248,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ListImage2.length,
                          itemBuilder: (context, index) {
                            final item = ListImage2[index];
                            return Container(
                              child: product(
                                  item.img, item.title, item.text, item.price),
                            );
                          })),
                ],
              ),
            )));
  }
}

Widget appbar() {
  return Column(
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
  );
}

Widget search() {
  return Container(
      height: 51,
      decoration: BoxDecoration(
          color: Color(0xffF2F3F2), borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(flex: 1, child: Icon(Icons.search)),
          Expanded(
            flex: 10,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none, hintText: 'Search Store'),
            ),
          ),
        ],
      ));
}

Widget banner() {
  return Container(
    height: 130,
    padding: EdgeInsets.only(top: 15),
    child: ListView(
      children: [
        SizedBox(
          height: 115,
          child: CarouselSlider(
            items: [Image.asset('assets/banner.png')],
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: false,
              scrollDirection: Axis.horizontal,
            ),
          ),
        )
      ],
    ),
  );
}

Widget textT(String text) {
  return Container(
    padding: EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(text,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Text(
          'See all',
          style: TextStyle(fontSize: 16, color: Color(0xff53B175)),
        )
      ],
    ),
  );
}

Widget product(String img, String title, String text, String price) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
    width: 173,
    decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18)),
    child: Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(width: 99, height: 79, child: Image.asset(img)),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    text,
                    style: TextStyle(color: Color(0xff7C7C7C)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: [
                    Expanded(
                        child: Text(
                      price,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(17)),
                      child: IconButton(
                          onPressed: (() {}),
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget sp1() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
    width: 248,
    decoration: BoxDecoration(
        color: Color(0xffFEF1E4), borderRadius: BorderRadius.circular(18)),
    child: Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset('assets/pulses.png'),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Pulses',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    ),
  );
}

Widget sp2() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 15, 15, 0),
    width: 248,
    decoration: BoxDecoration(
        color: Color(0xffE5F3EA), borderRadius: BorderRadius.circular(18)),
    child: Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Image.asset('assets/rice.png'),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Rice',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    ),
  );
}

class listt {
  String img;
  String title;
  String text;
  String price;
  listt(this.img, this.title, this.text, this.price);
}
