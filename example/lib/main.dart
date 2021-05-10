import 'package:flutter/material.dart';
import 'package:flutter_responsive_flex_grid/flutter_responsive_flex_grid.dart';
import 'package:responsive_flex_grid/model/planets.dart';
import 'package:responsive_flex_grid/widgets/banner.dart';
import 'package:responsive_flex_grid/widgets/contact_us.dart';
import 'package:responsive_flex_grid/widgets/footer.dart';
import 'package:responsive_flex_grid/widgets/planet_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<ResponsiveGridItem> list;
  late List<Planets> _planetList;

  @override
  void initState() {
    _planetList = [
      Planets(
          name: 'Mercury',
          description:
              'Mercury - the smallest planet in our solar system and closest to the Sun - is only slightly larger than Earth’s Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days.',
          earthDays: '88 Earth Days',
          url: 'assets/images/mercury.jpeg'),
      Planets(
          name: 'Venus',
          description:
              'Venus spins slowly in the opposite direction from most planets. A thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system.',
          earthDays: '225 Earth Days',
          url: 'assets/images/venus.jpeg'),
      Planets(
          name: 'Earth',
          description:
              'Earth - our home planet - is the only place we know of so far that’s inhabited by living things. It’s also the only planet in our solar system with liquid water on the surface.',
          earthDays: '365.25 Days',
          url: 'assets/images/earth.jpeg'),
      Planets(
          name: 'Mars',
          description:
              'Mars is a dusty, cold, desert world with a very thin atmosphere. There is strong evidence Mars was - billions of years ago - wetter and warmer, with a thicker atmosphere.',
          earthDays: '1.88 Earth Years',
          url: 'assets/images/mars.jpeg'),
      Planets(
          name: 'Jupiter',
          description:
              'Jupiter is more than twice as massive than the other planets of our solar system combined. The giant planet’s Great Red spot is a centuries-old storm bigger than Earth.',
          earthDays: '11.86 Earth Years',
          url: 'assets/images/jupiter.jpeg'),
      Planets(
          name: 'Saturn',
          description:
              'Adorned with a dazzling, complex system of icy rings, Saturn is unique in our solar system. The other giant planets have rings, but none are as spectacular as Saturn’s.',
          earthDays: '29.45 Earth Years',
          url: 'assets/images/saturn.jpeg'),
      Planets(
          name: 'Uranus',
          description:
              'Uranus - seventh planet from the Sun - rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side.',
          earthDays: '84 Earth Years',
          url: 'assets/images/uranus.jpeg'),
      Planets(
          name: 'Neptune',
          description:
              'Neptune - the eighth and most distant major planet orbiting our Sun - is dark, cold and whipped by supersonic winds. It was the first planet located through mathematical calculations, rather than by telescope.',
          earthDays: '164.82 Earth Years',
          url: 'assets/images/neptune.jpeg')
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PlanetBanner(),
              SizedBox(height: 56),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Text('Planets in Our Solar System',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
              SizedBox(height: 16),
              Container(
                width: 600,
                margin: EdgeInsets.only(left: 16, right: 16),
                alignment: Alignment.center,
                child: Text(
                  'An overview of the history, mythology and current scientific knowledge of the planets, moons and other objects in our solar system.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 32),
              ResponsiveGrid(gridSpacing: 32, children: [
                ..._planetList
                    .map((item) => ResponsiveGridItem(
                        xs: 100 / 1,
                        sm: 100 / 2,
                        md: 100 / 3,
                        lg: 100 / 4,
                        xl: 100 / 5,
                        xxl: 100 / 6,
                        child: PlanetCard(obj: item)))
                    .toList()
              ]),
              ContactUs(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
