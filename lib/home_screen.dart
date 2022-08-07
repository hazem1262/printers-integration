import 'package:flutter/material.dart';
import 'package:test_printers/blue_thermal_printer/blue_thermal.dart';
import 'package:test_printers/esc_pos_bluetooth/esc_pos.dart';
import 'package:test_printers/print_bluetooth_thermal/print_bluetooth_thermal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test printers'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context){
                      return ESC_POS_Page(title: "test printers",);
                    },
                    // settings: RouteSettings(arguments: device)
                  ),
              );
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("esc_pos_bluetooth"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return const BlueThermal();
                  },
                  // settings: RouteSettings(arguments: device)
                ),
              );
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("BlueThermal"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return const PrintBluetoothThermalScreen();
                  },
                  // settings: RouteSettings(arguments: device)
                ),
              );
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("PrintBluetoothThermal"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
