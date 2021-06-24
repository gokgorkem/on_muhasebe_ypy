import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniHesapBankalarBody extends StatefulWidget {
  const YeniHesapBankalarBody({Key? key}) : super(key: key);

  @override
  _YeniHesapBankalarBodyState createState() => _YeniHesapBankalarBodyState();
}

class _YeniHesapBankalarBodyState extends State<YeniHesapBankalarBody> {
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Hesap Adı ",
                      labelText: "Hesap Adı Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "IBAN NO",
                      labelText: "IBAN NO Giriniz",
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
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Açılış Bakiyesi",
                      labelText: "Açılış Bakiyesi Giriniz",
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Banka Adı ",
                      labelText: "Banka Adı Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Banka Telefon No",
                      labelText: "Banka Telefon No Giriniz",
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
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Banka Adres",
                      labelText: "Banka Adresi Giriniz",
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
