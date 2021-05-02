import 'package:flutter/material.dart';
import 'package:responsive_flex_grid/widgets/header.dart';

class PlanetBanner extends StatelessWidget {
  const PlanetBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/galaxy.gif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 600,
          ),
          Container(
            color: Colors.purple.withOpacity(.4),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Header(),
          ),
          Center(
            child: Container(
              width: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Beyond Horizons',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'This website is an easy-to-follow overview of the historical, scientific, cultural and mythological facts of our solar system. Topics include space facts, the planets, galaxies, black holes and other objects found in the solar system.',
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Colors.white,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
