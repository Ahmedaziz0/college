import 'package:college/widgets/user.dart';
import 'package:flutter/material.dart';

class ListUsers extends StatelessWidget {
  const ListUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = MediaQuery.of(context).textScaleFactor;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Users(),
        SizedBox(
          width: w / 70,
        ),
        Users(),
        SizedBox(
          width: w / 70,
        ),
        Users(),
        SizedBox(
          width: w / 70,
        ),
        Users(),
        SizedBox(
          width: w / 70,
        ),
      ],
    );
  }
}
