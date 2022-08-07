// import 'package:bluetooth_print/bluetooth_print.dart';
// import 'package:bluetooth_print/bluetooth_print_model.dart';
// import 'package:flutter/material.dart';
//
// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }
//
// class _DetailsScreenState extends State<DetailsScreen> {
//   bool isConnected = false;
//   late BluetoothPrint bluetoothPrint;
//
//   @override
//   void initState() {
//     super.initState();
//     bluetoothPrint = BluetoothPrint.instance;
//     listenToConnectionUpdates();
//   }
//   @override
//   Widget build(BuildContext context) {
//     BluetoothDevice device = ModalRoute.of(context)?.settings.arguments as BluetoothDevice;
//     return Column(
//       children: [
//         const SizedBox(height: 60,),
//         Text(device.name??""),
//         Text(device.address??""),
//         Text("type: " + device.type.toString()),
//         Text("connected:"  + ((device.connected??false) || isConnected).toString()),
//         TextButton(
//             onPressed: () async{
//               await bluetoothPrint.connect(device);
//             },
//             child: const Text("Connect")
//         ),
//         TextButton(
//           onPressed: () async {
//             Map<String, dynamic> config = {};
//             List<LineText> list = [];
//             list.add(LineText(type: LineText.TYPE_TEXT, content: 'A Title', weight: 1, align: LineText.ALIGN_CENTER,linefeed: 1));
//             list.add(LineText(type: LineText.TYPE_TEXT, content: 'this is conent left', weight: 0, align: LineText.ALIGN_LEFT,linefeed: 1));
//             list.add(LineText(type: LineText.TYPE_TEXT, content: 'this is conent right', align: LineText.ALIGN_RIGHT,linefeed: 1));
//             list.add(LineText(linefeed: 1));
//             list.add(LineText(type: LineText.TYPE_BARCODE, content: 'A12312112', size:10, align: LineText.ALIGN_CENTER, linefeed: 1));
//             list.add(LineText(linefeed: 1));
//             list.add(LineText(type: LineText.TYPE_QRCODE, content: 'qrcode i', size:10, align: LineText.ALIGN_CENTER, linefeed: 1));
//             list.add(LineText(linefeed: 1));
//             await bluetoothPrint.printReceipt(config, list);
//           },
//           child: const Text("Print Text")
//         )
//       ],
//     );
//   }
//
//   void listenToConnectionUpdates() {
//     bluetoothPrint.state.listen((state) {
//       print('current device status: $state');
//
//       switch (state) {
//         case BluetoothPrint.CONNECTED:
//           setState(() {
//             isConnected = true;
//           });
//           break;
//         case BluetoothPrint.DISCONNECTED:
//           setState(() {
//             isConnected = false;
//           });
//           break;
//         default:
//           break;
//       }
//     });
//   }
// }
