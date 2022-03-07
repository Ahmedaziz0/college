import 'package:college/screens/user_view.dart';
import 'package:flutter/material.dart';

class Users extends StatelessWidget {
  Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = MediaQuery.of(context).textScaleFactor;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const UV();
        }));
      },
      borderRadius: BorderRadius.circular(18),
      splashColor: Colors.blue[900],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: Container(
          color: Colors.grey[200],
          child: Column(children: [
            SizedBox(
              width: w / 3,
              height: h / 12,
              child: Image.asset(
                'assets/small.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "ھێمن کامەران ھیوا",
              style: TextStyle(fontSize: 9 * t, fontWeight: FontWeight.bold),
            ),
            Text(
              "ژمارەی مۆبایل: ٠٧٥٠٤٤٥٤٥٤٥",
              style: TextStyle(fontSize: 9 * t, fontWeight: FontWeight.bold),
            ),
            Text(
              "پیشە: جامچی",
              style: TextStyle(fontSize: 9 * t, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
