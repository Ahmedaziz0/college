import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/list_users.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int selectedIndex = 0;
  double xoffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  IconData icon = Icons.add_location;

  @override
  Widget build(BuildContext context) {
    final t = MediaQuery.of(context).textScaleFactor;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, 0, 0)..scale(scaleFactor),
      duration: const Duration(milliseconds: 250),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: w / 2.8),
              child: isDrawerOpen
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          xoffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      },
                      child: Icon(Icons.sort),
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          xoffset = w / 1.7;
                          scaleFactor = 1;
                          isDrawerOpen = true;
                        });
                      },
                      child: const Icon(Icons.sort),
                    ),
            ),
            Padding(
                padding: EdgeInsets.only(right: w / 2.5),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.location_pin),
                )),
            Padding(
                padding: EdgeInsets.only(right: w / 30),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 122,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/engineer.jpg",
                    fit: BoxFit.cover,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Feature",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30 * t),
                  ),
                  TextButton(onPressed: () {}, child: Text("More")),
                ],
              ),
              SizedBox(
                height: h / 7,
                child: ListUsers(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Best",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30 * t),
                  ),
                  TextButton(onPressed: () {}, child: Text("More")),
                ],
              ),
              SizedBox(
                height: h / 7,
                child: ListUsers(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " New",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30 * t),
                  ),
                  TextButton(onPressed: () {}, child: Text("More")),
                ],
              ),
              SizedBox(
                height: h / 7,
                child: ListUsers(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            FFNavigationBar(
              theme: FFNavigationBarTheme(
                barBackgroundColor: Colors.white,
                selectedItemBorderColor: Colors.white,
                selectedItemBackgroundColor: Colors.blue[900],
                selectedItemIconColor: Colors.white,
                selectedItemLabelColor: Colors.white,
                unselectedItemIconColor: Colors.white,
                unselectedItemLabelColor: Colors.white,
                showSelectedItemShadow: false,
              ),
              selectedIndex: selectedIndex,
              onSelectTab: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                FFNavigationBarItem(
                  iconData: Icons.home,
                  label: 'Home',
                ),
                FFNavigationBarItem(
                  iconData: Icons.favorite,
                  label: 'Favorite',
                ),
                FFNavigationBarItem(
                  iconData: Icons.public,
                  label: 'NearBy',
                ),
                FFNavigationBarItem(
                  iconData: Icons.notifications_active_outlined,
                  label: 'Notification',
                ),
              ],
            ),
            ClipRRect(
              borderRadius:
                  BorderRadius.vertical(top: const Radius.circular(15.0)),
              child: FFNavigationBar(
                theme: FFNavigationBarTheme(
                  barBackgroundColor: Colors.blue[900],
                  selectedItemBorderColor: Colors.white,
                  selectedItemBackgroundColor: Colors.blue[900],
                  selectedItemIconColor: Colors.white,
                  selectedItemLabelColor: Colors.white,
                  unselectedItemIconColor: Colors.white,
                  unselectedItemLabelColor: Colors.white,
                  showSelectedItemShadow: false,
                ),
                selectedIndex: selectedIndex,
                onSelectTab: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                items: [
                  FFNavigationBarItem(
                    iconData: Icons.home,
                    label: 'Home',
                  ),
                  FFNavigationBarItem(
                    iconData: Icons.favorite,
                    label: 'Favorite',
                  ),
                  FFNavigationBarItem(
                    iconData: Icons.public,
                    label: 'NearBy',
                  ),
                  FFNavigationBarItem(
                    iconData: Icons.notifications_active_outlined,
                    label: 'Notification',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
