import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 20,
                width: MediaQuery.of(context).size.width,
                color: Color(0xfff3b2b7),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)),
                        color: Colors.white),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25.0,
                  left: 15.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2 - 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        Text(
                          'Preparation time',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff726b68)),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          '5min',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffc6c4c4)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: .5,
                            color: Color(0xffc6c4c4),
                          ),
                        ),
                        Text(
                          'ingredients',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff726b68)),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 110.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildIngredientItem(
                                  'Water',
                                  Icon(Feather.droplet,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF6FC5DA)),
                              _buildIngredientItem(
                                  'Brewed Espresso',
                                  Icon(Feather.target,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF615955)),
                              _buildIngredientItem(
                                  'Sugar',
                                  Icon(Feather.box,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFFF39595)),
                              _buildIngredientItem(
                                  'Toffee Nut Syrup',
                                  Icon(MaterialCommunityIcons.peanut_outline,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF8FC28A)),
                              _buildIngredientItem(
                                  'Natural Flavors',
                                  Icon(MaterialCommunityIcons.leaf_maple,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF3B8079)),
                              _buildIngredientItem(
                                  'Vanilla Syrup',
                                  Icon(
                                      MaterialCommunityIcons
                                          .flower_tulip_outline,
                                      size: 18.0,
                                      color: Colors.white),
                                  Color(0xFFF8B870)),
                              SizedBox(width: 25.0),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 35.0),
                          child: Container(
                            height: .5,
                            color: Color(0xffc6c4c4),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Nutrition information',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff726b68)),
                        ),
                        _buildMacroValue('calories', '250kcal'),
                        _buildMacroValue('proteins', '10g'),
                        _buildMacroValue('caffeine', '150mg'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.0),
                                color: Color(0Xff473d3a)),
                            child: Center(
                              child: Text('Make order',
                                  style: TextStyle(
                                      fontFamily: 'nunito',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 20.0,
                  left: 75.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pinkcup.png'),
                            fit: BoxFit.cover)),
                  )),
              Positioned(
                  top: 25.0,
                  left: 15.0,
                  child: Container(
                    height: 300.0,
                    width: 250.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 150.0,
                              child: Text(
                                'Caramel macchaito',
                                style: TextStyle(
                                    fontFamily: 'varela',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  size: 18.0,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                        Container(
                          width: 150.0,
                          child: Text(
                            'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                            style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xff473d3a)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4.2',
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '/5',
                                      style: TextStyle(
                                          fontFamily: 'varela',
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 35.0,
                                      width: 80.0,
                                    ),
                                    Positioned(
                                      left: 40.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                            border: Border.all(
                                                color: Color(0xfff3b2b7),
                                                style: BorderStyle.solid,
                                                width: 1.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/man.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                            border: Border.all(
                                                color: Color(0xfff3b2b7),
                                                style: BorderStyle.solid,
                                                width: 1.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/model.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0.0,
                                      child: Container(
                                        height: 35.0,
                                        width: 35.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(17.0),
                                            border: Border.all(
                                                color: Color(0xfff3b2b7),
                                                style: BorderStyle.solid,
                                                width: 1.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/model2.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(width: 3,),
                                Text('+27 more',
                                style: TextStyle(
                                  fontFamily: 'nanuto',
                                  fontSize: 12,
                                  color: Colors.white
                                ),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }

  _buildMacroValue(String name, String value) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
              fontFamily: 'nunito', fontSize: 14.0, color: Color(0xffd4d3d2)),
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(
          value,
          style: TextStyle(
              fontFamily: 'nunito', fontSize: 12.0, color: Color(0xff716966)),
        ),
      ],
    );
  }

  _buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: bgColor),
            child: Center(
              child: iconName,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 50.0,
            width: 50.0,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFC2C0C0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
