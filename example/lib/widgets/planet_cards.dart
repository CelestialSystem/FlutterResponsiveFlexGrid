import 'package:flutter/material.dart';
import '../model/planets.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({Key? key, required this.obj}) : super(key: key);
  final Planets obj;

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                '${obj.url}',
                key: Key('image_asset'),
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FittedBox(
                  child: Text(
                    '${obj.name}',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Flexible(
                child: FittedBox(
                  child: Text(
                    '${obj.earthDays}',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '${obj.description}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
