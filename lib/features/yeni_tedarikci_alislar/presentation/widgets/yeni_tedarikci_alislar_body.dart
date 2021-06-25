import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/constants.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniTedarikciAlislarBody extends StatefulWidget {
  const YeniTedarikciAlislarBody({Key? key}) : super(key: key);

  @override
  _YeniTedarikciAlislarBodyState createState() =>
      _YeniTedarikciAlislarBodyState();
}

class _YeniTedarikciAlislarBodyState extends State<YeniTedarikciAlislarBody> {
  final _formKey = GlobalKey<FormState>(debugLabel: "asd");
  late EntitiesModel entitiesModel;
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
                      hintText: "Tedarikçi İsim",
                      labelText: "Tedarikçi İsimi Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Tedarikçi Eposta",
                      labelText: "Tedarikçi Eposta Giriniz",
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
                      hintText: "Tedarikçi Eposta",
                      labelText: "Tedarikçi Eposta Giriniz",
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
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Telefon Numarası",
                      labelText: "Telefon Numarası Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Tedarikçi Adres",
                      labelText: "Tedarikçi Adres Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: _onPressedIptal(), child: Text("İptal")),
                    SizedBox(width: 10),
                    TextButton(
                        onPressed: _onPressedKaydet(), child: Text("Kaydet")),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _onPressedIptal() {
    Navigator.of(context).pushNamed(ALISLAR_TEDARIKCILER_PAGE_ROUTE);
  }

  _onPressedKaydet() {
    Navigator.of(context).pushNamed(ALISLAR_TEDARIKCILER_PAGE_ROUTE);
  }
}
