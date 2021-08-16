import 'package:flutter/material.dart';
import 'tabs/routines.dart';

class Workouts extends StatefulWidget {
  @override
  WorkOutState createState() => WorkOutState();
}

class WorkOutState extends State<Workouts> {
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
      return Stack(
        children: <Widget>[
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, left: 30),
                        child: Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0, left: 30),
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
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

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              backgroundColor: Colors.black45,
              bottom: const TabBar(
                unselectedLabelStyle: TextStyle(fontSize: 18),
                // labelStyle: TextStyle(fontFamily: "BarlowBold", color: black),),
                tabs: [
                  Tab(text: 'Routines'),
                  Tab(text: 'Sessions'),
                  Tab(text: 'Classes'),
                ],
              ),
              title: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          child: Text('WORKOUTS',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold))),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                              height: 30,
                              width: 30,
                              color: Colors.black38,
                              child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(Icons.note_add_rounded))))
                    ],
                  ))),
          body: TabBarView(
            children: <Widget>[
              Routines(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
