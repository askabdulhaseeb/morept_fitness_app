import 'package:flutter/material.dart';

class Programs extends StatefulWidget {
  @override
  ProgramState createState() => ProgramState();
}

class ProgramState extends State<Programs> {
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

    Widget _addImageWidget(
        String image, String title, String subtitle, int size) {
      return Stack(children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: MediaQuery.of(context).size.height * size / 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(image))),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                          Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10.0, left: 30),
                              child: Text(title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25))),
                          Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 30.0, left: 30),
                              child: Text(subtitle,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 15)))
                        ]))))),
      ]);
    }

    Widget _addSmallImageWidget(
        String image, String text, int size, int width) {
      return Stack(children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.only(top: 20),
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

    Widget _horizontalImage(List<String> image, List<String> title,
        List<String> subTitle, List<int> size, List<int> width) {
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
                    // child: _addImageWidget(
                    //     image[i], title[i], subTitle[i], size[i])
                    child: _addSmallImageWidget(
                        image[i], title[i], size[i], width[i]),
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
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "PROGRAMS",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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
                  "ROAD TO TOKYO OLYMPICS 2020",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                _addImageWidget(
                    'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                    'THE PERFECT STROKE',
                    '2 weeks . Oliver Zeidler',
                    4),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(child: _buildTitleWidget('RUN')),
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
                  '5K MIN 30',
                  '5K MIN 30',
                ], [
                  '11 weeks . Orlando Pizzolato',
                  '11 weeks . Orlando Pizzolato',
                ], [
                  7,
                  7
                ], [
                  8,
                  8
                ]),
               
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: _buildTitleWidget('TENNIS')),
                _addImageWidget(
                    'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                    'FAST ON YOUR FEET',
                    '4 weeks . Dalibor Sirola',
                    4),

                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: _buildTitleWidget('SKIING')),
                _addImageWidget(
                    'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                    'CONQUER THE SLOPES',
                    '4 weeks . Federico Colli',
                    4),
              ],
            ),
          ),
        ));
  }
}
