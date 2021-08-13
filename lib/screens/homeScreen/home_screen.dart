import 'package:flutter/material.dart';
import 'package:morept_fitness_app/screens/selectable_navigation_screen/selectable_navigation_screen.dart';
import 'homeScreenWidgets/add_text_with_bg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/HomeScreen';
  @override
  _CurryFormScreenState createState() => _CurryFormScreenState();
}

class _CurryFormScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: double.infinity,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  expandedHeight: MediaQuery.of(context).size.width / 1.4,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
                      fit: BoxFit.cover,
                    ),
                    title: const Text('Reshape Reality'),
                  ),
                ),
                SliverFillRemaining(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                      ),
                    ),
                    child: addTitleWithBackground(context),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  SelectableNavigationScreen.routeName,
                  (Route<dynamic> route) => false,
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: const Text(
                  '''Let's Start''',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
