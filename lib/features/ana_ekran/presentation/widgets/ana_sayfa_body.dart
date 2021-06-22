import 'dart:math';
import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class AnaSayfaBody extends StatefulWidget {
  const AnaSayfaBody({Key? key}) : super(key: key);

  @override
  _AnaSayfaBodyState createState() => _AnaSayfaBodyState();
}

class _AnaSayfaBodyState extends State<AnaSayfaBody> {
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  DateTime beforeDate = DateTime.now();
  DateTime afterDate = DateTime.now();
  var formatDate = new DateFormat('yyyy-MM-dd');
  List<String> _baslik = ["Toplam Gelir", "Toplam Gider", "Toplam Kar"];
  List<Color> _baslikRenk = [Colors.green, Colors.redAccent, Colors.blueAccent];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: DateTime(DateTime.now().year - 5),
                  maxTime: afterDate,
                  onConfirm: (date) {
                    setState(() {
                      beforeDate = date;
                    });
                  },
                  currentTime: DateTime.now(),
                  locale: LocaleType.tr,
                );
              },
              child: Text(formatDate.format(beforeDate)),
            ),
            SizedBox(width: 20),
            TextButton(
              onPressed: () {
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: beforeDate,
                  maxTime: DateTime(DateTime.now().year + 5),
                  onConfirm: (date) {
                    setState(() {
                      afterDate = date;
                    });
                  },
                  currentTime: DateTime.now(),
                  locale: LocaleType.tr,
                );
              },
              child: Text(formatDate.format(afterDate)),
            ),
            SizedBox(width: 20),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            3,
            (index) {
              return Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: _baslikRenk[index]),
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                            child: Text(
                      _baslik[index],
                      style: TextStyle(fontSize: 24),
                    ))),
                    Divider(),
                    Text("0.00"),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey),
                width: 200,
                child: Column(
                  children: [
                    Text("Hesap Bakiyesi"),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("data1"), Text("data2")],
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey),
                width: 200,
                child: Column(
                  children: [
                    Text("Son Gelirler"),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Tarih"),
                        Text("Kategori"),
                        Text("tutar")
                      ],
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey),
                width: 200,
                child: Column(
                  children: [
                    Text("Son Giderler"),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Tarih"),
                        Text("Kategori"),
                        Text("tutar")
                      ],
                    )
                  ],
                )),
          ],
        ),
      ]),
    );
  }
}

class SalesData {
  final String year;
  final List<double> sales;

  SalesData(this.year, this.sales);
}
