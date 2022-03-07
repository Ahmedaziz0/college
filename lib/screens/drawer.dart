import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class d extends StatefulWidget {
  const d({Key? key}) : super(key: key);

  @override
  _dState createState() => _dState();
}

class _dState extends State<d> {
  @override
  Widget build(BuildContext context) {
    final t = MediaQuery.of(context).textScaleFactor;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    Widget iconBuilder(IconData mdiIcons) {
      return InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Icon(
          mdiIcons,
          size: 50,
          color: Colors.blue[900],
        ),
      );
    }

    Widget tileBuilder(String string, IconData iconData) {
      return InkWell(
        onTap: () {},
        child: ListTile(
          leading: Icon(
            iconData,
            color: Colors.blue[900],
          ),
          title: Text(
            string,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
                fontSize: 18 * t),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
        toolbarHeight: h / 3.8,
        title: Row(
          children: [
            Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/small.jpeg'),
                ),
                const Text(
                  "ناو: ھێمن کامەران ھیوا",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "ژمارەی مۆبایل: ٠٧٥٠٤٤٥٤٥٤٥",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "عراق/هەولێر",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: w / 80,
                    ),
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            tileBuilder('چوونە ژوورەوە', Icons.login),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            tileBuilder('دەربارەی ئێمە', Icons.supervised_user_circle),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            tileBuilder('پەیوەندی کردن بە ئێمە', Icons.person_outline),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            SizedBox(
              height: h / 3.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                iconBuilder(MdiIcons.facebook),
                SizedBox(
                  width: w / 15,
                ),
                iconBuilder(MdiIcons.instagram),
                SizedBox(
                  width: w / 15,
                ),
                iconBuilder(MdiIcons.snapchat),
              ],
            )
          ],
        ),
      ),
    );
  }
}
