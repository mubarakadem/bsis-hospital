import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(8, 8))),
        elevation: 4,
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                    child: Image(
                  image: AssetImage("images/find.png"),
                  height: 64,
                  width: 64,
                )),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            )),
      ),
    );
  }
}
