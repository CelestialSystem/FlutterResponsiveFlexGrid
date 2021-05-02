import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff18022b),
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: SizedBox(
        width: 50,
        height: 50,
        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Want to know more?',
                style: Theme.of(context)
                    .textTheme
                    .headline4?.copyWith(color: Colors.white, fontWeight: FontWeight.w100),
              ),
              SizedBox(
                width: 24,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'Contact Us'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .button?.copyWith(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(24),
                    backgroundColor: Color(0xff8d1bc1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
