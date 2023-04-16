import 'dart:math';

import 'package:flutter/material.dart';

/// GestureDetector
///
/// Flutter Package of the Week:
/// https://www.youtube.com/watch?v=WhVXkCFPmK4&ab_channel=Flutter
/// DartPad Sample:
/// https://dartpad.dev/?id=0f3158aeea2ad7cb1dbcebe376d0292c&null_safety=true
///
class V5 extends StatefulWidget {
  const V5({super.key});

  @override
  State<V5> createState() => _V5State();
}

class _V5State extends State<V5> {
  double _left = 0;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _left,
          top: _top,
          child: GestureDetector(
              // ignore: avoid_print
              onTap: () => print('I was tapped!'),
              onPanUpdate: (details) => setState(() {
                    _top = max(0, _top + details.delta.dy);
                    _left = max(0, _left + details.delta.dx);
                  }),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )),
        ),
      ],
    );
  }
}
