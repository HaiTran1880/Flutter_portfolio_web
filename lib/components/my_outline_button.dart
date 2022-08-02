import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String imageSrc, text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2.5, vertical: kDefaultPadding),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          onPressed: press,
          child: Row(
            children: [
              Image.asset(imageSrc, height: 40),
              SizedBox(width: kDefaultPadding),
              Text(text)
            ],
          )),
    );
  }
}
