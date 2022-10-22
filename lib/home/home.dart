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
          crossAxisSpacing: 8,
          padding: const EdgeInsets.all(8),
          children: [
            FeatureCard(onPressed: () => {
              debugPrint("Find inventory clicked")
            }, title: "Find Inventory"),
            FeatureCard(onPressed: () => {}, title: "View Stock Levels"),
            FeatureCard(onPressed: () => {}, title: "Manage Orders"),
          ],
        ),
      ),
    );
  }
}
