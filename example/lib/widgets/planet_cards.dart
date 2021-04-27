import 'package:flutter/material.dart';
import '../model/planets.dart';

class PlanetCard extends StatelessWidget {
  const PlanetCard({Key key, @required this.obj}) : super(key: key);
  final Planets obj;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              '${obj.url}',
              key: Key('image_asset'),
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FittedBox(
                  child: Text(
                    '${obj.name}',
                    style: textTheme.headline6
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Flexible(
                child: FittedBox(
                  child: Text(
                    '${obj.earthDays}',
                    style: textTheme.subtitle2
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            '${obj.description}',
            style: textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
