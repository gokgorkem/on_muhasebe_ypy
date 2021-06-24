import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniMusteriSatislarBody extends StatefulWidget {
  const YeniMusteriSatislarBody({Key? key}) : super(key: key);

  @override
  _YeniMusteriSatislarBodyState createState() =>
      _YeniMusteriSatislarBodyState();
}

class _YeniMusteriSatislarBodyState extends State<YeniMusteriSatislarBody> {
  final _formKey = GlobalKey<FormState>(debugLabel: "asd");
  late EntitiesModel entitiesModel;
  DateTime _date = DateTime.now();
  var formatDate = new DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Müşteri İsim",
                      labelText: "Müşteri İsimi Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Müşteri Eposta",
                      labelText: "Müşteri Eposta Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Vergi No",
                      labelText: "Vergi No Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    child: DropdownButton(
                      hint: Text("Para Birimi Seçiniz"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Türk Lirası"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Dolar"),
                          value: 2,
                          onTap: () => null,
                        ),
                      ],
                      onChanged: (value) => null,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
