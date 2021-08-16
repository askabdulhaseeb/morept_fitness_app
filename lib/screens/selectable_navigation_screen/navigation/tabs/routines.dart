import 'package:flutter/material.dart';

class Routines extends StatefulWidget {
  @override
  RoutinesState createState() => RoutinesState();
}

class RoutinesState extends State<Routines> {
  @override
  Widget build(BuildContext context) {
    Widget _buildTitleWidget(String text) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: const Alignment(-0.9, 0.3),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      );
    }

    Widget _addImageWidget(String image, String text, int size) {
      return Stack(children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height * size / 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(image))),
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0, left: 30),
                        child: Text(text,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)))))),
      ]);
    }

    Widget _addSmallImageWidget(
        String image, String text, int size, int width) {
      return Stack(children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height * size / 10,
                    width: MediaQuery.of(context).size.width * width / 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(image))),
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0, left: 30),
                        child: Text(text,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)))))),
      ]);
    }

    Widget _horizontalImage(List<String> image, List<String> text,
        List<int> size, List<int> width) {
      return Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (int i = 0; i < image.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    // padding: const EdgeInsets.all(20),
                    child: _addSmallImageWidget(
                        image[i], text[i], size[i], width[i]),
                  ),
                )
            ],
          ));
    }

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0), // here the desired height

          child: AppBar(
            
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
              ),
            ),
            backgroundColor: Colors.black54,
            flexibleSpace: Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://brandslogos.com/wp-content/uploads/images/large/gs-racing-logo.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView(
              children: <Widget>[
                const Text(
                  "PRECISION PROGRAM",
                  style: TextStyle(color: Colors.black),
                ),
                // ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "WEEK 1/5",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      // )
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),

                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54,
                  ),
                  child: const Center(
                    child: Text("Time to burn off some calories",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                _addImageWidget(
                    'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                    'DAILY WORKOUT',
                    4),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(child: _buildTitleWidget('WELLNESS MAGAZINE')),
                        FlatButton(
                            onPressed: () => {},
                            child: const Text(
                              'see more',
                              style: TextStyle(fontSize: 14),
                            ))
                      ],
                    )),
                _horizontalImage([
                  'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                  'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                ], [
                  'Champions train with Technogym: Kazuyasu Minobe',
                  'Champions train with Technogym: Kazuyasu Minobe',
                ], [
                  7,
                  7
                ], [
                  8,
                  8
                ]),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: _buildTitleWidget('SET UP A WORKOUT')),

                _horizontalImage([
                  'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                  'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                ], [
                  'Train Outdoors',
                  'Train with Equipment'
                ], [
                  4,
                  4
                ], [
                  5,
                  5
                ]),
                const Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    '''Let's perfect Technogym App together''',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                )),
                ButtonTheme(
                  height: 70,
                child:Padding(
                  padding: EdgeInsets.only(left: 70.0, right: 70.0,bottom: 50,top:20),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.black,
                    child: Text("Send feedback", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ));
  }
}
