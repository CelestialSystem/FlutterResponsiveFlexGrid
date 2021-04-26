import 'package:flutter/material.dart';

class PageSlider extends StatelessWidget {
  const PageSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xfff3f3f3),
      padding: EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                '8 Planets',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 56,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(width: 40),
          Column(
            children: [
              Text(
                'Dwarf Planets',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(width: 40),
          Column(
            children: [
              Text(
                'Other Objects',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
