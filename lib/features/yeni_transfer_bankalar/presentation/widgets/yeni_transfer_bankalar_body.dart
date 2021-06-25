import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniTransferBankalarBody extends StatefulWidget {
  const YeniTransferBankalarBody({Key? key}) : super(key: key);

  @override
  _YeniTransferBankalarBodyState createState() =>
      _YeniTransferBankalarBodyState();
}

class _YeniTransferBankalarBodyState extends State<YeniTransferBankalarBody> {
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
                  child: Container(
                    child: DropdownButton(
                      hint: Text("Gönderilen Hesap"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Kasa"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Banka"),
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
                  child: Container(
                    child: DropdownButton(
                      hint: Text("Alan Hesap"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Kasa"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Banka"),
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Tutar ",
                      labelText: "Tutar Giriniz",
                      border: OutlineInputBorder(),
                    ),
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
                      Text("Tarihi : "),
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
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Açıklama ",
                      labelText: "Açıklama Giriniz",
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
                      hint: Text("Ödeme Yöntemi"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Nakit"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Havale"),
                          value: 2,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("EFT"),
                          value: 3,
                          onTap: () => null,
                        ),
                      ],
                      onChanged: (value) => null,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(children: [
              TextButton(onPressed: () => null, child: Text("iptal")),
              SizedBox(width: 10,),
              TextButton(onPressed: () => null, child: Text("Kaydet")),

            ],)
          ],
        ),
      ),
    );
  }
}
