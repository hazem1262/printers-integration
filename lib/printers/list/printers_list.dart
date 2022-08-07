// import 'package:flutter/material.dart';
// import 'package:bluetooth_print/bluetooth_print.dart';
// import 'package:bluetooth_print/bluetooth_print_model.dart';
// import 'package:test_printers/printers/details/details_screen.dart';
//
// class PrintersList extends StatefulWidget {
//   const PrintersList({Key? key}) : super(key: key);
//
//   @override
//   State<PrintersList> createState() => _PrintersListState();
// }
//
// class _PrintersListState extends State<PrintersList> {
//
//   late BluetoothPrint bluetoothPrint;
//   @override
//   void initState() {
//     super.initState();
//     bluetoothPrint = BluetoothPrint.instance;
//     WidgetsBinding.instance?.addPostFrameCallback((_) => initBluetooth());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<List<BluetoothDevice>>(
//         stream: bluetoothPrint.scanResults,
//         initialData: const [],
//         builder: (c, snapshot) {
//           if(snapshot.hasData) {
//             return Column(
//               children: snapshot.data?.map((device) => ListTile(
//                 title: Text(device.name??''),
//                 subtitle: Text(device.address??"NA"),
//                 onTap: () async {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                         builder: (context){
//                           return const DetailsScreen();
//                         },
//                         settings: RouteSettings(arguments: device)
//                     ),
//                   );
//                 },
//                 trailing: device.connected == true ?const Icon(
//                   Icons.check,
//                   color: Colors.green,
//                 ):null,
//               )).toList()??[],
//             );
//           }
//           return Center(child: const CircularProgressIndicator());
//         }
//       ),
//     );
//   }
//
//   initBluetooth() {
//     bluetoothPrint.startScan(timeout: const Duration(seconds: 4));
//   }
// }
