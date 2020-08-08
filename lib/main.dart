import 'package:QRISPayApps/UI/LoginOrSignup/ChoseLoginOrSignup.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';
import 'package:QRISPayApps/UI/PembayaranUIComponent/Invoice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRISPAY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'QRISPAY Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.dataqris}) : super(key: key);

  final String title;
  final String dataqris;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> listobject = [];
  String data = "QR Code Data";
  int index = 0;
  String objects = "";
  String values = "";
  String lengths = "";
  String datax = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SCAN QRIS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(
            //   data,
            //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            // ),
            RaisedButton(
              child: Text("Scan QRIS"),
              onPressed: () {
                scanQR();
              },
            ),
          ],
        ),
      ),
    );
  }

  void scanQR() async {
    String scanResult = await scan();
    setState(() {
      data = scanResult;
      Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new InvoicePage(data),
          transitionDuration: Duration(milliseconds: 950),
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: child,
            );
          }));
// // object 1
//       data1 = data.substring(0, 2);
//       data2 = data.substring(4, 4 + int.parse(data.substring(2, 4)));
//       var lenobject1 = data1.length + 2 + data2.length;
// // object 2
//       data3 = data.substring(lenobject1, lenobject1 + 2);
//       data4 = data.substring(
//           lenobject1 + 2 + 2,
//           (lenobject1 + 2 + 2) +
//               int.parse(data.substring(lenobject1 + 2, lenobject1 + 2 + 2)));
//       var lenobject2 = lenobject1 +
//           4 +
//           int.parse(data.substring(lenobject1 + 2, lenobject1 + 2 + 2));
// // object 3
//       data5 = data.substring(lenobject2, lenobject2 + 2);
//       data6 = data.substring(
//           lenobject2 + 2 + 2,
//           (lenobject2 + 2 + 2) +
//               int.parse(data.substring(lenobject2 + 2, lenobject2 + 2 + 2)));
//       var lenobject3 = lenobject2 +
//           4 +
//           int.parse(data.substring(lenobject2 + 2, lenobject2 + 2 + 2));
// // object 4
//       data7 = data.substring(lenobject3, lenobject3 + 2);
//       data8 = data.substring(
//           lenobject3 + 2 + 2,
//           (lenobject3 + 2 + 2) +
//               int.parse(data.substring(lenobject3 + 2, lenobject3 + 2 + 2)));
//       var lenobject4 = lenobject3 +
//           4 +
//           int.parse(data.substring(lenobject3 + 2, lenobject3 + 2 + 2));
// // object 5
//       data9 = data.substring(lenobject4, lenobject4 + 2);
//       data10 = data.substring(
//           lenobject4 + 2 + 2,
//           (lenobject4 + 2 + 2) +
//               int.parse(data.substring(lenobject4 + 2, lenobject4 + 2 + 2)));
//       var lenobject5 = lenobject4 +
//           4 +
//           int.parse(data.substring(lenobject4 + 2, lenobject4 + 2 + 2));
// // object 6
//       data11 = data.substring(lenobject5, lenobject5 + 2);
//       data12 = data.substring(
//           lenobject5 + 2 + 2,
//           (lenobject5 + 2 + 2) +
//               int.parse(data.substring(lenobject5 + 2, lenobject5 + 2 + 2)));
//       var lenobject6 = lenobject5 +
//           4 +
//           int.parse(data.substring(lenobject5 + 2, lenobject5 + 2 + 2));

//       data13 = data.substring(lenobject6, lenobject6 + 2);
//       data14 = data.substring(
//           lenobject6 + 2 + 2,
//           (lenobject6 + 2 + 2) +
//               int.parse(data.substring(lenobject6 + 2, lenobject6 + 2 + 2)));
//       var lenobject7 = lenobject6 +
//           4 +
//           int.parse(data.substring(lenobject6 + 2, lenobject6 + 2 + 2));

//       data15 = data.substring(lenobject7, lenobject7 + 2);
//       data16 = data.substring(
//           lenobject7 + 2 + 2,
//           (lenobject7 + 2 + 2) +
//               int.parse(data.substring(lenobject7 + 2, lenobject7 + 2 + 2)));
//       var lenobject8 = lenobject7 +
//           4 +
//           int.parse(data.substring(lenobject7 + 2, lenobject7 + 2 + 2));

//       data17 = data.substring(lenobject8, lenobject8 + 2);
//       data18 = data.substring(
//           lenobject8 + 2 + 2,
//           (lenobject8 + 2 + 2) +
//               int.parse(data.substring(lenobject8 + 2, lenobject8 + 2 + 2)));
//       var lenobject9 = lenobject8 +
//           4 +
//           int.parse(data.substring(lenobject8 + 2, lenobject8 + 2 + 2));

//       data19 = data.substring(lenobject9, lenobject9 + 2);
//       data20 = data.substring(
//           lenobject9 + 2 + 2,
//           (lenobject9 + 2 + 2) +
//               int.parse(data.substring(lenobject9 + 2, lenobject9 + 2 + 2)));
//       var lenobject10 = lenobject9 +
//           4 +
//           int.parse(data.substring(lenobject9 + 2, lenobject9 + 2 + 2));

//       data21 = data.substring(lenobject10, lenobject10 + 2);
//       data22 = data.substring(
//           lenobject10 + 2 + 2,
//           (lenobject10 + 2 + 2) +
//               int.parse(data.substring(lenobject10 + 2, lenobject10 + 2 + 2)));
//       var lenobject11 = lenobject10 +
//           4 +
//           int.parse(data.substring(lenobject10 + 2, lenobject10 + 2 + 2));

//       data23 = data.substring(lenobject11, lenobject11 + 2);
//       data24 = data.substring(
//           lenobject11 + 2 + 2,
//           (lenobject11 + 2 + 2) +
//               int.parse(data.substring(lenobject11 + 2, lenobject11 + 2 + 2)));
    });
  }
}
