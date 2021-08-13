import 'package:flutter/material.dart';

Widget HorizontalListview(BuildContext context,String image) {
  final title = 'Horizontal List';
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    // height: 200.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
           padding: EdgeInsets.all(10),
            width: 160.0,
            child:CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    NetworkImage(image),
                backgroundColor: Colors.transparent,
              )
            ),

      ],
    ),
  );
}
