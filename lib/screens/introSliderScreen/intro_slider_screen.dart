import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../auth/loginScreen/login_screen.dart';
import '../introSliderScreen/intro_slider_repo.dart';

class IntroSliderScreen extends StatefulWidget {
  const IntroSliderScreen({Key? key}) : super(key: key);
  static const String routeName = '/IntroSliderScreen';
  @override
  _IntroSliderScreenState createState() => _IntroSliderScreenState();
}

class _IntroSliderScreenState extends State<IntroSliderScreen> {
  final CarouselController _controller = CarouselController();
  final List<IntroSliderRepo> _introSlider = <IntroSliderRepo>[
    const IntroSliderRepo(
      title: 'Monthly Workouts',
      description:
          'Workouts tailored to you not the general population at an affordable price.',
      imageURL:
          'https://images.unsplash.com/photo-1611841315886-a8ad8d02f179?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTYxfHxneW18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    ),
    const IntroSliderRepo(
      title: 'Gym Accelerator',
      description:
          "If you've just started or have become stuck along the way our 6-week gym accelerator courses will help to push you forward",
      imageURL:
          'https://images.unsplash.com/photo-1581122584612-713f89daa8eb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGd5bSUyMGZpdG5lc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    ),
    const IntroSliderRepo(
      title: 'Weight Calculator',
      description:
          'Get a workout plan that is tailored to your strength level including pyramid set, drop set and superset calculations',
      imageURL:
          'https://images.unsplash.com/photo-1591027480007-a42f6ef886c3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODJ8fGd5bXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    ),
    const IntroSliderRepo(
      title: 'Class Above',
      description:
          'Step | Calorie burn | Abs | Just Thighs + glutes | Barz + Calisthenicz | Stretch sessions available at off peak and peak time',
      imageURL:
          'https://images.unsplash.com/photo-1590239926044-4131f5d0654d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    const IntroSliderRepo(
      title: 'Personal Sessions',
      description:
          'Physiotherapy| Personal training| Diet coaching| Sports specific sessions now available',
      imageURL:
          'https://images.unsplash.com/photo-1599447292180-45fd84092ef0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTA4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
    ),
    const IntroSliderRepo(
      title: '20 Minute Workouts',
      description:
          "If you've got the motivation but haven't got the time the 20-minute workout might be what you need.",
      imageURL:
          'https://images.unsplash.com/photo-1548690312-e3b507d8c110?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fGd5bSUyMGZpdG5lc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              height: size.height,
              viewportFraction: 1.0,
            ),
            carouselController: _controller,
            items: _introSlider
                .map(
                  (IntroSliderRepo slide) => Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: size.height,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(slide.imageURL),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                        color: Colors.black54,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: size.height * 0.4,
                            ),
                            Text(
                              slide.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              slide.description,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                wordSpacing: 3,
                                letterSpacing: 2,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: () => _controller.previousPage(),
                  child: const Text(
                    'Previous',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        LoginScreen.routeName, (Route<dynamic> route) => false);
                  },
                  child: const Text(
                    'Done',
                  ),
                ),
                TextButton(
                  onPressed: () => _controller.nextPage(),
                  child: const Text(
                    'Next',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
