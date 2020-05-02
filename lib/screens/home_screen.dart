import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/components/hotel_carousel.dart';
import 'package:recipe_app/components/meal_carousel.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.utensils,
    FontAwesomeIcons.hamburger,
    FontAwesomeIcons.iceCream,
    FontAwesomeIcons.breadSlice
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          // TODO: Logic
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(_icons[index],
            size: 25.0,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColor
                : Color(0xFFB4C1C4)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to eat?',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            MealCarousel(),
            SizedBox(
              height: 20.0,
            ),
            //HotelCarousel()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Icon(
                Icons.search,
                size: 30.0,
              )),
          BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Icon(
                FontAwesomeIcons.pizzaSlice,
                size: 25.0,
              )),
          BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: CircleAvatar(
                radius: 17,
                backgroundColor: _currentTab == 2
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
                  radius: 15,
                ),
              ))
        ],
      ),
    );
  }
}
