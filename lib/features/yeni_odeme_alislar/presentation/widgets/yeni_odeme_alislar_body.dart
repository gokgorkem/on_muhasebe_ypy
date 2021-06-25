import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/constants.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniOdemeAlislarBody extends StatefulWidget {
  const YeniOdemeAlislarBody({Key? key}) : super(key: key);

  @override
  _YeniOdemeAlislarBodyState createState() => _YeniOdemeAlislarBodyState();
}

class _YeniOdemeAlislarBodyState extends State<YeniOdemeAlislarBody> {
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
                  child: TextButton(
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
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Ödeme Tutarı",
                      labelText: "Ödeme Tutarı Giriniz",
                      border: OutlineInputBorder(),
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
                  child: Container(
                    child: DropdownButton(
                      hint: Text("Hesaplar"),
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
                  // TODO changed to Search filed
                  child: Container(
                    child: DropdownButton(
                      hint: Text("Müşteriler"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Ali"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Veli"),
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Açıklama",
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
                      hint: Text("Kategoriler"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Alış"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Satış"),
                          value: 2,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("Diğer"),
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
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
                          child: Text("Kredi kartı"),
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
            ),Row(children: [
              TextButton(
                  onPressed: _onPressedIptal(), child: Text("İptal")),
              SizedBox(width: 10),
              TextButton(
                  onPressed: _onPressedKaydet(), child: Text("Kaydet")),
              
            ],)
          ],
        ),
      ),
    );
  }

  _onPressedIptal() {
    Navigator.of(context).pushNamed(ALISLAR_ODEMELER_PAGE_ROUTE);
  }

  _onPressedKaydet() {
    Navigator.of(context).pushNamed(ALISLAR_ODEMELER_PAGE_ROUTE);}
}
