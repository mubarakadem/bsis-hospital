import 'package:bsis_hospital/home/feature_menu_item.dart';
import 'package:bsis_hospital/manage_orders/manage_orders.dart';
import 'package:bsis_hospital/util/screens.dart';
import 'package:bsis_hospital/view_stock/view_stock.dart';
import 'package:dual_screen/dual_screen.dart';
import 'package:flutter/material.dart';

import '../find_inventory/find_inventory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScreenN _screenN = ScreenN.findInventory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home - BSIS Hospital"),
      ),
      body: Center(
        child: TwoPane(
          startPane: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              FeatureMenuItem(
                onTap: () => _changeScreen(ScreenN.findInventory),
                text: "Find Inventory",
                backgroundColor: _screenN == ScreenN.findInventory
                    ? Colors.blueAccent
                    : Colors.transparent,
                contentColor: _screenN == ScreenN.findInventory
                    ? Colors.white
                    : Colors.black87,
              ),
              FeatureMenuItem(
                onTap: () => _changeScreen(ScreenN.viewStock),
                text: "View Stock Level",
                backgroundColor: _screenN == ScreenN.viewStock
                    ? Colors.blueAccent
                    : Colors.transparent,
                contentColor: _screenN == ScreenN.viewStock
                    ? Colors.white
                    : Colors.black87,
              ),
              FeatureMenuItem(
                onTap: () => _changeScreen(ScreenN.manageOrder),
                text: "Manage Orders",
                backgroundColor: _screenN == ScreenN.manageOrder
                    ? Colors.blueAccent
                    : Colors.transparent,
                contentColor: _screenN == ScreenN.manageOrder
                    ? Colors.white
                    : Colors.black87,
              ),
            ],
          ),
          endPane: EndPane(
            screenN: _screenN,
          ),
          panePriority: MediaQuery.of(context).size.width < 500
              ? TwoPanePriority.start
              : TwoPanePriority.both,
          paneProportion: 0.3,
        ),
      ),
    );
  }

  void _changeScreen(ScreenN screenN) {
    setState(() {
      _screenN = screenN;
    });
  }
}

class EndPane extends StatelessWidget {
  const EndPane({Key? key, required this.screenN}) : super(key: key);
  final ScreenN screenN;

  @override
  Widget build(BuildContext context) {
    if (screenN == ScreenN.findInventory) {
      return const FindInventoryScreen();
    } else if (screenN == ScreenN.viewStock) {
      return const ViewStockScreen();
    } else if (screenN == ScreenN.manageOrder) {
      return const ManageOrderScreen();
    }
    return Container();
  }
}
