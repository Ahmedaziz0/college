import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UV extends StatefulWidget {
  const UV({Key? key}) : super(key: key);

  @override
  _UVState createState() => _UVState();
}

class _UVState extends State<UV> {
  Widget iconBuilder(IconData iconData) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {},
      child: Icon(
        iconData,
        size: 60,
        color: Colors.blue[900],
      ),
    );
  }

  Widget imageBuilder(w) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: SizedBox(
        width: w / 4,
        child: Image.asset(
          'assets/work.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = MediaQuery.of(context).textScaleFactor;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Stack(children: [
      Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 5,
          flexibleSpace: Image.asset(
            'assets/e.png',
            fit: BoxFit.cover,
          ),
          toolbarHeight: h / 5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: h / 50,
                  ),
                  Text(
                    "ناو: ھێمن کامەران ھیوا",
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ژمارەی مۆبایل: ٠٧٥٠٤٤٥٤٥٤٥",
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "پیشە: جامچی",
                    style: TextStyle(
                        color: Colors.blue[900], fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ئەلبومی کارەکانم ",
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20 * t),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "زیاتر ببینە",
                        style: TextStyle(color: Colors.blue[900], fontSize: 18),
                      )),
                ],
              ),
              SizedBox(
                height: h / 8,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: w / 70,
                    ),
                    imageBuilder(w),
                    SizedBox(
                      width: w / 70,
                    ),
                    imageBuilder(w),
                    SizedBox(
                      width: w / 70,
                    ),
                    imageBuilder(w),
                    SizedBox(
                      width: w / 70,
                    ),
                    imageBuilder(w),
                    SizedBox(
                      width: w / 70,
                    ),
                    imageBuilder(w),
                  ],
                ),
              ),
              SizedBox(
                height: h / 70,
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    " دەنگدان",
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 25 * t),
                  ),
                ],
              ),
              SizedBox(
                height: h / 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: h / 70,
              ),
              SizedBox(
                width: w / 4,
                height: h / 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blue[900]),
                      onPressed: () {},
                      child: ClipRRect(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              size: 15,
                            ),
                            SizedBox(
                              width: w / 60,
                            ),
                            const Text("دەنگدان"),
                          ],
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: h / 100,
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SizedBox(
                height: h / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconBuilder(MdiIcons.facebook),
                  iconBuilder(MdiIcons.instagram),
                  iconBuilder(MdiIcons.snapchat),
                  iconBuilder(FontAwesomeIcons.tiktok),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: h / 15,
              color: Colors.blue[900],
              child: const Icon(
                Icons.call,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        left: w / 20,
        top: h / 5.5,
        child: const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/small.jpeg'),
        ),
      ),
    ]);
  }
}
