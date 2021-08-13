import 'package:flutter/material.dart';
import 'bottom_navigation_bar_widget.dart';

class SelectableNavigationScreen extends StatefulWidget {
  static const String routeName = '/SelectableNavigationScreen';
  @override
  _SelectableNavigationScreenState createState() =>
      _SelectableNavigationScreenState();
}

class _SelectableNavigationScreenState
    extends State<SelectableNavigationScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const Center(child: Text('Page 1')),
    const Center(child: Text('Page 2')),
    const Center(child: Text('Page 3')),
    const Center(child: Text('Page 4')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavigationBarWidget(onTab: _onItemTapped),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
