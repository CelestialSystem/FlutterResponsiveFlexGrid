import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                'Galaxy'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.white, letterSpacing: 8),
              ),
            ),
          ),
          Flexible(
            child: FittedBox(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('About', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Contact',
                          style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
