import 'package:flutter/material.dart';

import 'glass_content.dart';

class LogoBlurBox extends StatelessWidget {
  const LogoBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Logo.png"),
        Spacer(),
        GlassContent(size: size),
        Spacer(
          flex: 3,
        )
      ],
    );
  }
}
