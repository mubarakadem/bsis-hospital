import 'package:flutter/material.dart';

class FeatureMenuItem extends StatelessWidget {
  const FeatureMenuItem(
      {Key? key,
      required this.onTap,
      required this.text,
      this.backgroundColor,
      this.contentColor})
      : super(key: key);

  final VoidCallback? onTap;
  final String text;
  final Color? backgroundColor;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: InkWell(
          onTap: onTap,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Text(
                text,
                style: TextStyle(fontSize: 18, color: contentColor),
              ))),
    );
  }
}
