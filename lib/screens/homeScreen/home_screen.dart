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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        height: double.infinity,
        child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 500,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                fit: BoxFit.cover,
              ),
              title: Text('Reshape Reality'),
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
          )
        ],
      ),
     ) );
  }
}
