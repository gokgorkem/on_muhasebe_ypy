import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniFaturaAlislarBody extends StatefulWidget {
  const YeniFaturaAlislarBody({Key? key}) : super(key: key);

  @override
  _YeniFaturaAlislarBodyState createState() => _YeniFaturaAlislarBodyState();
}

class _YeniFaturaAlislarBodyState extends State<YeniFaturaAlislarBody> {
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
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  //TODO changed to serch field
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Tedarikçi ",
                      labelText: "Tedarikçi  Seçiniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Fatura Tarihi : "),
                      TextButton(
                        onPressed: () {
                          DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime(DateTime.now().year - 5),
                            maxTime: DateTime(DateTime.now().year + 5),
                            onConfirm: (date) {
                              setState(() {
                                _date = date;
                              });
                            },
                            currentTime: DateTime.now(),
                            locale: LocaleType.tr,
                          );
                        },
                        child: Text(formatDate.format(_date)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Vade Tarihi : "),
                      TextButton(
                        onPressed: () {
                          DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime(DateTime.now().year - 5),
                            maxTime: DateTime(DateTime.now().year + 5),
                            onConfirm: (date) {
                              setState(() {
                                _date = date;
                              });
                            },
                            currentTime: DateTime.now(),
                            locale: LocaleType.tr,
                          );
                        },
                        child: Text(formatDate.format(_date)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: DropdownButton(
                      hint: Text("Fatura Kategoıri"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Alış"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Diğer"),
                          value: 2,
                          onTap: () => null,
                        ),
                      ],
                      onChanged: (value) => null,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    initialValue: "sipariş 1",
                    decoration: InputDecoration(
                      hintText: "Sipariş No",
                      labelText: "Sipariş No Giriniz",
                      border: OutlineInputBorder(),
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
