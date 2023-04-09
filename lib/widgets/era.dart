import 'package:flutter/material.dart';

class Era extends StatefulWidget {
  const Era({super.key, required this.title, required this.paddingTop});

  final String title;
  final double paddingTop;

  @override
  State<Era> createState() => _EraState();
}

class _EraState extends State<Era> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: widget.paddingTop),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            widget.title,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
