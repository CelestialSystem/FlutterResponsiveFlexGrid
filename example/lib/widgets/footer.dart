import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xffebebeb),
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Stay Connected',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.w600)),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _getSocialIcons(FontAwesomeIcons.facebookF, Color(0xff3b5998)),
              SizedBox(width: 16),
              _getSocialIcons(FontAwesomeIcons.twitter, Color(0xff55acee)),
              SizedBox(width: 16),
              _getSocialIcons(FontAwesomeIcons.linkedinIn, Color(0xff017ab9)),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(onPressed: () {}, child: Text('Home')),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              TextButton(onPressed: () {}, child: Text('About')),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              TextButton(onPressed: () {}, child: Text('Contact')),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text(
              'The content in this site is from NASA Science, Solar System Exploration',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1),
        ],
      ),
    );
  }

  Container _getSocialIcons(IconData iconData, Color color) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
