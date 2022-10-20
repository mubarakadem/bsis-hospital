import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(8, 8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              icon: const Icon(Icons.find_in_page),
              onPressed: () => {}),
          const Text(
            "Find Inventory",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
