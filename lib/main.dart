import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';

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
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = "QR Code Data";
  int index = 0;
  String objects = "";
  String values = "";
  int lenghts = 0;
  String datas1 = "";
  String datas2 = "";
  String datas3 = "";
  String datas4 = "";
  String datas5 = "";
  String data1 = "";
  String data2 = "";
  String data3 = "";
  String data4 = "";
  String data5 = "";
  String data6 = "";
  String data7 = "";
  String data8 = "";
  String data9 = "";
  String data10 = "";
  String data11 = "";
  String data12 = "";
  String data13 = "";
  String data14 = "";
  String data15 = "";
  String data16 = "";
  String data17 = "";
  String data18 = "";
  String data19 = "";
  String data20 = "";
  String data21 = "";
  String data22 = "";
  String data23 = "";
  String data24 = "";
  String datax = "";
  List listobject = [];
  List listobjects = [];
  String datas = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              data,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            RaisedButton(
              child: Text("Scan QRIS"),
              onPressed: () {
                scanQR();
              },
            ),
            Text(
              "Details :",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              data1 + " - " + objectname(data1) + " = " + data2,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data3 + " - " + objectname(data3) + " = " + data4,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data5 + " - " + objectname(data5) + " = " + data6,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data7 + " - " + objectname(data7) + " = " + data8,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data9 + " - " + objectname(data9) + " = " + data10,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data11 + " - " + objectname(data11) + " = " + data12,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data13 + " - " + objectname(data13) + " = " + data14,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data15 + " - " + objectname(data15) + " = " + data16,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data17 + " - " + objectname(data17) + " = " + data18,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data19 + " - " + objectname(data19) + " = " + data20,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data21 + " - " + objectname(data21) + " = " + data22,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            Text(
              data23 + " - " + objectname(data23) + " = " + data24,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            // Text(
            //   "ke1 -" + datas1,
            //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            // ),
            // Text(
            //   "ke2 -" + datas2,
            //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            // ),
            // Text(
            //   "ke3 -" + datas3,
            //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            // ),
            // Text(
            //   "ke4 -" + datas4,
            //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            // ),
            // Text(
            //   "ke5 -" + datas5,
            //   style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            // ),
          ],
        ),
      ),
    );
  }

  objectname(x) {
    if (x == "00") {
      datax = "Payload Format Indicator";
    } else if (x == "01") {
      datax = "Point of Initiation Method";
    } else if (x == "26") {
      datax = "Data";
    } else if (x == "02" || x == "51") {
      datax = "Merchant Account Information ";
    } else if (x == "52") {
      datax = "Merchant Category Code";
    } else if (x == "53") {
      datax = "Transaction Currency";
    } else if (x == "54") {
      datax = "Transaction Amount ";
    } else if (x == "55") {
      datax = "Tip or Convenience IndicatoR";
    } else if (x == "56") {
      datax = "Value of Convenience Fee Fixed ";
    } else if (x == "57") {
      datax = "Value of Convenience Fee Percentage ";
    } else if (x == "58") {
      datax = "Country Code";
    } else if (x == "59") {
      datax = "Merchant Name";
    } else if (x == "60") {
      datax = "Merchant City ";
    } else if (x == "61") {
      datax = "Postal Code";
    } else if (x == "62") {
      datax = "Additional Data Field Template";
    } else if (x == "63") {
      datax = "CRC";
    } else if (x == "64") {
      datax = "Merchant Information— Language Template";
    } else if (x == "65" || x == "79") {
      datax = "RFU for EMVCo ";
    } else if (x == "80" || x == "99") {
      datax = "Unreserved Templates";
    } else {
      datax = '';
    }
    return datax;
  }

  void scanQR() async {
    String scanResult = await scan();
    setState(() {
      data = scanResult;
      // var zz;

      // var dataloop;
      for (var i = 0; i < data.length; i++) {
        var x = index;
        var a = index;
        var b = a + 2;
        var c = b + 2;
        var d = c + int.parse(data.substring(b, c));
        objects = data.substring(a, d);
        index = objects.length;
        listobject.insert(i, objects);
      }

      //   for (var i = 0; i < data.length; i++) {
      //     var a = index;
      //     var b = a + 2;
      //     var c = b + 2;
      //     var d = c + int.parse(data.substring(b, c));
      //     objects = data.substring(a, b); //data object
      //     lenghts = int.parse(data.substring(2, 4));//panjang value
      //     values = data.substring(c, d);//value
      //     var x = data.substring(a, d);//satu object
      //     index = x.length;// panjang satu object
      //     listobject.insert(i, values);
      // }
      //   // if (objects != "") {
      //   //   dataloop = objects +
      //   //       " - " +
      //   //       objectname(objects) +
      //   //       " = " +
      //   //       values +
      //   //       "-" +
      //   //       index.toString();
      //   index = x.length;

      //   dataloop = "-" +
      //       i.toString() +
      //       "-" +
      //       objects +
      //       "-" +
      //       values +
      //       "-" +
      //       x +
      //       '=' +
      //       index.toString();
      //   listobject.insert(i, dataloop);
      //   // }

      // }
      // var dataloop;
      // for (var j = 0; j <= 1; j++) {
      //   //   // for (var i = 0; i <= 1; i++) {
      //   objects = data.substring(j, j + 2);
      //   lenghts = int.parse(data.substring(2, 4));
      //   values = data.substring(j + 4, 4 + lenghts);
      //   j = 4 + values.length;
      //   dataloop = objects +
      //       " - " +
      //       objectname(objects) +
      //       " = " +
      //       values +
      //       " = " +
      //       j.toString();
      //   // datas = j.toString();
      //   listobject.insert(0, dataloop);
      //   // }

      // }
      datas1 = listobject[0];
      datas2 = listobject[1];
      datas3 = listobject[2];
      datas4 = listobject[3];
      datas5 = listobject[4];
// object 1
      data1 = data.substring(0, 2);
      data2 = data.substring(4, 4 + int.parse(data.substring(2, 4)));
      var lenobject1 = data1.length + 2 + data2.length;
// object 2
      data3 = data.substring(lenobject1, lenobject1 + 2);
      data4 = data.substring(
          lenobject1 + 2 + 2,
          (lenobject1 + 2 + 2) +
              int.parse(data.substring(lenobject1 + 2, lenobject1 + 2 + 2)));
      var lenobject2 = lenobject1 +
          4 +
          int.parse(data.substring(lenobject1 + 2, lenobject1 + 2 + 2));
// object 3
      data5 = data.substring(lenobject2, lenobject2 + 2);
      data6 = data.substring(
          lenobject2 + 2 + 2,
          (lenobject2 + 2 + 2) +
              int.parse(data.substring(lenobject2 + 2, lenobject2 + 2 + 2)));
      var lenobject3 = lenobject2 +
          4 +
          int.parse(data.substring(lenobject2 + 2, lenobject2 + 2 + 2));
// object 4
      data7 = data.substring(lenobject3, lenobject3 + 2);
      data8 = data.substring(
          lenobject3 + 2 + 2,
          (lenobject3 + 2 + 2) +
              int.parse(data.substring(lenobject3 + 2, lenobject3 + 2 + 2)));
      var lenobject4 = lenobject3 +
          4 +
          int.parse(data.substring(lenobject3 + 2, lenobject3 + 2 + 2));
// object 5
      data9 = data.substring(lenobject4, lenobject4 + 2);
      data10 = data.substring(
          lenobject4 + 2 + 2,
          (lenobject4 + 2 + 2) +
              int.parse(data.substring(lenobject4 + 2, lenobject4 + 2 + 2)));
      var lenobject5 = lenobject4 +
          4 +
          int.parse(data.substring(lenobject4 + 2, lenobject4 + 2 + 2));
// object 6
      data11 = data.substring(lenobject5, lenobject5 + 2);
      data12 = data.substring(
          lenobject5 + 2 + 2,
          (lenobject5 + 2 + 2) +
              int.parse(data.substring(lenobject5 + 2, lenobject5 + 2 + 2)));
      var lenobject6 = lenobject5 +
          4 +
          int.parse(data.substring(lenobject5 + 2, lenobject5 + 2 + 2));

      data13 = data.substring(lenobject6, lenobject6 + 2);
      data14 = data.substring(
          lenobject6 + 2 + 2,
          (lenobject6 + 2 + 2) +
              int.parse(data.substring(lenobject6 + 2, lenobject6 + 2 + 2)));
      var lenobject7 = lenobject6 +
          4 +
          int.parse(data.substring(lenobject6 + 2, lenobject6 + 2 + 2));

      data15 = data.substring(lenobject7, lenobject7 + 2);
      data16 = data.substring(
          lenobject7 + 2 + 2,
          (lenobject7 + 2 + 2) +
              int.parse(data.substring(lenobject7 + 2, lenobject7 + 2 + 2)));
      var lenobject8 = lenobject7 +
          4 +
          int.parse(data.substring(lenobject7 + 2, lenobject7 + 2 + 2));

      data17 = data.substring(lenobject8, lenobject8 + 2);
      data18 = data.substring(
          lenobject8 + 2 + 2,
          (lenobject8 + 2 + 2) +
              int.parse(data.substring(lenobject8 + 2, lenobject8 + 2 + 2)));
      var lenobject9 = lenobject8 +
          4 +
          int.parse(data.substring(lenobject8 + 2, lenobject8 + 2 + 2));

      data19 = data.substring(lenobject9, lenobject9 + 2);
      data20 = data.substring(
          lenobject9 + 2 + 2,
          (lenobject9 + 2 + 2) +
              int.parse(data.substring(lenobject9 + 2, lenobject9 + 2 + 2)));
      var lenobject10 = lenobject9 +
          4 +
          int.parse(data.substring(lenobject9 + 2, lenobject9 + 2 + 2));

      data21 = data.substring(lenobject10, lenobject10 + 2);
      data22 = data.substring(
          lenobject10 + 2 + 2,
          (lenobject10 + 2 + 2) +
              int.parse(data.substring(lenobject10 + 2, lenobject10 + 2 + 2)));
      var lenobject11 = lenobject10 +
          4 +
          int.parse(data.substring(lenobject10 + 2, lenobject10 + 2 + 2));

      data23 = data.substring(lenobject11, lenobject11 + 2);
      data24 = data.substring(
          lenobject11 + 2 + 2,
          (lenobject11 + 2 + 2) +
              int.parse(data.substring(lenobject11 + 2, lenobject11 + 2 + 2)));
    });
  }
}
