import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;

  Duration duration = Duration(microseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      onTap: () {},
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          height: 256,
          width: 256,
          decoration: BoxDecoration(
              color: services[widget.index].color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: duration,
                padding: EdgeInsets.all(kDefaultPadding * 1.5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      if (!isHover)
                        BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 30,
                            color: Colors.black.withOpacity(0.1))
                    ]),
                child:
                    Image.asset(services[widget.index].image, fit: BoxFit.fill),
              ),
              SizedBox(height: kDefaultPadding),
              Text(services[widget.index].title, style: TextStyle(fontSize: 22))
            ],
          )),
    );
  }
}
