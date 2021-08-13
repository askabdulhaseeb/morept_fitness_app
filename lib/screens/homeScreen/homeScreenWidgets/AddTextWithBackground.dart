import 'package:flutter/material.dart';
import 'package:morept_fitness_app/screens/homeScreen/homeScreenWidgets/AddTextWithBackground.dart';
import 'package:morept_fitness_app/screens/homeScreen/homeScreenWidgets/HorizontalListview.dart';

Widget AddTitleWithBackground(BuildContext context) {
  Widget _buildTextWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment(-0.9, 0.3),
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyText2,
            children: [
              WidgetSpan(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(Icons.arrow_drop_up)),
              ),
              TextSpan(
                  text: text,
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleWidget(String text) {
    return Padding(
          padding: const EdgeInsets.all(30.0),
          child: Align(
            alignment: Alignment(-0.9, 0.3),
            child: Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black)
                    ),
          ),
        );
  }

  return Scaffold(body:Container(
    // margin: EdgeInsets.only(top: 360),
    // width: double.infinity,
    // height: double.infinity,

    decoration: new BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white),
    //    margin: const EdgeInsets.only(top: 10.0),

    child: Column(
      children: <Widget>[
        _buildTitleWidget("Reshape Reality"),
        _buildTextWidget('Intermediate'),
        _buildTextWidget('Tone your body'),
        _buildTextWidget(' 30 min - 4 workouts per week'),
        _buildTextWidget('5 weeks'),

        _buildTitleWidget("Description"),
        _buildTextWidget("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),

        _buildTitleWidget("RULES OF THE GAME"),

        // HorizontalListview(context,'https://www.pngrepo.com/png/10904/512/power.png'),

        // HorizontalListview(context,'https://www.pngrepo.com/png/10904/512/power.png'),
        // HorizontalListview(context,'https://www.pngrepo.com/png/10904/512/power.png'),

      ],
    ),
  ));
}
