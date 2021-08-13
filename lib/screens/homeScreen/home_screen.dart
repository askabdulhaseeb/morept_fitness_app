import 'package:flutter/material.dart';
import '../../../config/app_images.dart';
import 'package:morept_fitness_app/screens/homeScreen/homeScreenWidgets/AddTextWithBackground.dart';

class HomeScreen extends StatefulWidget {
  @override
  _CurryFormScreenState createState() => _CurryFormScreenState();
}

class _CurryFormScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.network(
                  'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                  fit: BoxFit.cover,
                ),
                title: Container(
                  child:Text('Reshape Reality')),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                child: AddTitleWithBackground(context),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
              padding: EdgeInsets.all(0),
              margin:
                  const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10),
              width: double.infinity,
              height: 70,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text("LET'S START",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white)),
              ))

          ),
    );
  }
}
