import 'package:bsis_hospital/home/feature_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home - BSIS Hospital"),
      ),
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 160,
          padding: const EdgeInsets.all(8),
          children: const [
            FeatureCard()
          ],
        ),
      ),
    );
  }
}
