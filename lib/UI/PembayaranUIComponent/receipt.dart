import 'package:QRISPayApps/custom/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReceiptPage extends StatefulWidget {
  // ReceiptPage({Key key, this.title, this.data}) : super(key: key);

  ReceiptPage(this.data);
  final String data;

  @override
  _ReceiptPageState createState() => _ReceiptPageState(this.data);
}

enum metodepembayaran { ovo, gopay, dana, jenius }

class _ReceiptPageState extends State<ReceiptPage> {
  final String data;
  TextEditingController ctrlmoney = TextEditingController();
  // metodepembayaran _metode;

  _ReceiptPageState(this.data);

  List<String> listobject = [];
  // String data = '';
  int index = 0;
  String objects = "";
  String values = "";
  String lengths = "";
  String datax = "";
  String nominal;
  String metodebayar;
  String nmid = "";
  String tokonama = "";
  String tokocity = "";

  @override
  Widget build(BuildContext context) {
    // for (var i = 0; i < data.length; i = i + index) {
    //   var a = i; //0
    //   var b = a + 2; //2
    //   var c = b + 2; //4
    //   var d = c + int.parse(data.substring(b, c));
    //   objects = data.substring(a, b); //data object
    //   lengths = data.substring(b, c); //panjang value
    //   values = data.substring(c, d); //value
    //   var x = data.substring(a, d);
    //   index = x.length;
    //   var nameobject = objectname(objects);
    //   if (objects == "26" || objects == "51") {
    //     var xindex = 0;
    //     var looping = "=> ($objects) $nameobject = $lengths = $values";
    //     listobject.add(looping);
    //     for (var xi = 0; xi < values.length; xi = xi + xindex) {
    //       var xa = xi; //0
    //       var xb = xa + 2; //2
    //       var xc = xb + 2; //4
    //       var xd = xc + int.parse(values.substring(xb, xc));
    //       var xobjects = values.substring(xa, xb); //x object
    //       var xlengths = values.substring(xb, xc); //panjang value
    //       var xvalues = values.substring(xc, xd); //value
    //       var y = values.substring(xa, xd);
    //       xindex = y.length;
    //       if (objects == "51") {
    //         if (xobjects == "02") {
    //           nmid = xvalues;
    //         } else {}
    //       } else {
    //         nmid = data;
    //       }
    //       var xnameobject = objectname(xobjects);
    //       var xlooping =
    //           "=> sub ($xobjects) $xnameobject = $xlengths = $xvalues";
    //       listobject.add(xlooping);
    //     }
    //   } else if (objects == "59") {
    //     tokonama = values;
    //   } else if (objects == "60") {
    //     tokocity = values;
    //   } else {
    //     var looping = "=> ($objects) $nameobject = $lengths = $values";
    //     listobject.add(looping);
    //   }
    // }
    // TextStyle _ts = TextStyle(fontSize: 10.0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Recipt"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                data.toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            // Text(
            //   "NMID : " + nmid,
            //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            // ),
            // MoneyTextFormField(
            //   settings: MoneyTextFormFieldSettings(
            //       controller: ctrlmoney,
            //       enabled: true,
            //       moneyFormatSettings: MoneyFormatSettings(
            //           currencySymbol: 'Rp.',
            //           displayFormat: MoneyDisplayFormat.symbolOnLeft,
            //           amount: 0,
            //           fractionDigits: 0,
            //           thousandSeparator: '.'),
            //       appearanceSettings: AppearanceSettings(
            //           padding: EdgeInsets.all(15.0),
            //           labelText: 'Nominal Pembayaran',
            //           hintText: '0',
            //           labelStyle: _ts,
            //           inputStyle: _ts.copyWith(color: Colors.orange),
            //           formattedStyle: _ts.copyWith(color: Colors.blue))),
            // ),
            // ListTile(
            //   title: const Text(
            //     'OVO',
            //     style: TextStyle(fontSize: 10),
            //   ),
            //   leading: Radio(
            //     value: metodepembayaran.ovo,
            //     groupValue: _metode,
            //     onChanged: (metodepembayaran value) {
            //       setState(() {
            //         _metode = value;
            //       });
            //     },
            //   ),
            // ),
            // ListTile(
            //   title: const Text(
            //     'GOPAY',
            //     style: TextStyle(fontSize: 10),
            //   ),
            //   leading: Radio(
            //     value: metodepembayaran.gopay,
            //     groupValue: _metode,
            //     onChanged: (metodepembayaran value) {
            //       setState(() {
            //         _metode = value;
            //       });
            //     },
            //   ),
            // ),
            // ListTile(
            //   title: const Text(
            //     'JENIUS',
            //     style: TextStyle(fontSize: 10),
            //   ),
            //   leading: Radio(
            //     value: metodepembayaran.jenius,
            //     groupValue: _metode,
            //     onChanged: (metodepembayaran value) {
            //       setState(() {
            //         _metode = value;
            //       });
            //     },
            //   ),
            // ),
            // ListTile(
            //   title: const Text(
            //     'DANA',
            //     style: TextStyle(fontSize: 10),
            //   ),
            //   leading: Radio(
            //     value: metodepembayaran.dana,
            //     groupValue: _metode,
            //     onChanged: (metodepembayaran value) {
            //       setState(() {
            //         _metode = value;
            //       });
            //     },
            //   ),
            // ),
            // Container(
            //   child: Column(
            //     children: List.generate(listobject.length, (index) {
            //       return Container(
            //         color: Colors.blueAccent,
            //         alignment: Alignment.centerLeft,
            //         child: Text(
            //           "" + listobject[index],
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       );
            //     }),
            //   ),
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
}
