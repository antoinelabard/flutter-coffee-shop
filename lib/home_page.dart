import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome Antoine',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Color(0xff473d3a)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/model.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 45.0),
            child: Container(
              child: Text(
                'Let\'s select the taste of your next coffee break',
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffb0aaa7)),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Taste of the week',
              style: TextStyle(
                  fontFamily: 'varela',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Color(0xff473d3a)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text(
                'See all',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Color(0xFFCEC7C4)),
              ),
            ),
          ]),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 410.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Misto',
                    'Coffeshop',
                    'Our dark, rich espresso, balanced with steamed milk and light layer of foam',
                    '4.99€',
                    false),
                _coffeeListCard(
                    'assets/starbucks.png',
                    'Caffe Latte',
                    'BrownHouse',
                    'Rich, full-bodied espresso with bittersweet sauce and steamed milk',
                    '3.99€',
                    true),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore nearby',
                style: TextStyle(
                    fontFamily: 'varela',
                    fontSize: 17.0,
                    color: Color(0xffcec7c4)),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'varela',
                      fontSize: 17.0,
                      color: Color(0xffcec7c4)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _coffeeListCard(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Container(
            height: 300.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Stack(children: [
                  Container(height: 335.0),
                  Positioned(
                      top: 75.0,
                      child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 20.0),
                          height: 260.0,
                          width: 225.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Color(0xFFDAB68C)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 60.0,
                                ),
                                Text(
                                  shopName + '\'s',
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  coffeeName,
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  description,
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 14.0,
                                      // fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      price,
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF3A4742)),
                                    ),
                                    Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            color: Colors.white),
                                        child: Center(
                                            child: Icon(Icons.favorite,
                                                color: isFavorite
                                                    ? Colors.red
                                                    : Colors.grey,
                                                size: 15.0)))
                                  ],
                                )
                              ]))),
                  Positioned(
                      left: 60.0,
                      top: 25.0,
                      child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain))))
                ]),
                SizedBox(height: 20.0),
                InkWell(
                    onTap: () {},
                    child: Container(
                        height: 50.0,
                        width: 225.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xFF473D3A)),
                        child: Center(
                            child: Text('Order Now',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))))
              ],
            )));
  }
}
