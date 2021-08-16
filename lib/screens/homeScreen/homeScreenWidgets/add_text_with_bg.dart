import 'package:flutter/material.dart';

Widget addTitleWithBackground(BuildContext context) {
  Widget _buildTextWidget(String text) {
    return Align(
      alignment: const Alignment(-0.9, 0.3),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: <InlineSpan>[
            const WidgetSpan(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(Icons.arrow_drop_up),
              ),
            ),
            TextSpan(
              text: text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Align(
        alignment: const Alignment(-0.9, 0.3),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildSUBTitleWidget(String text) {
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

  final Widget horizontalList2 = Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey,
            child: const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/b8/58/18/b85818b2857e45d0686546b2c8aa65ef.jpg',
              ),
            ),
          ),
        ],
      ));
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(40),
      ),
      color: Colors.white,
    ),
    child: ListView(
      shrinkWrap: true,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTitleWidget("Reshape Reality"),
            _buildTextWidget('Intermediate'),
            _buildTextWidget('Tone your body'),
            _buildTextWidget(' 30 min - 4 workouts per week'),
            _buildTextWidget('5 weeks'),
            _buildTitleWidget("EQUIPMENT"),
            horizontalList2,
            _buildTitleWidget("Description"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
            _buildTitleWidget("RULES OF THE GAME"),
            _buildSUBTitleWidget("REACH YOUR GOAL"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
            _buildSUBTitleWidget("TAILORED TO YOU"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
            _buildSUBTitleWidget("SWITCH IT UP"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
            const Divider(thickness: 1.5, color: Colors.black),
            _buildTitleWidget("Your Program"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
            _buildTitleWidget("Chapter 2 - Reshape Reality"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
            _buildTitleWidget("Chapter 3 - High Defination"),
            _buildTextWidget(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
          ],
        ),
      ],
    ),
  );
}
