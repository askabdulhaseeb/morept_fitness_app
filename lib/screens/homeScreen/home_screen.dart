import 'package:flutter/material.dart';
import '../../../config/app_images.dart';
import 'package:morept_fitness_app/screens/homeScreen/homeScreenWidgets/add_text_with_bg.dart';

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
      body: SizedBox(
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
                child: AddTitleWithBackground(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
