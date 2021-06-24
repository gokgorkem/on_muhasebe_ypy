import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniUrunHizmetBody extends StatefulWidget {
  const YeniUrunHizmetBody({Key? key}) : super(key: key);

  @override
  _YeniUrunHizmetBodyState createState() => _YeniUrunHizmetBodyState();
}

class _YeniUrunHizmetBodyState extends State<YeniUrunHizmetBody> {
  final _formKey = GlobalKey<FormState>(debugLabel: "asd");
  late EntitiesModel entitiesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Ürün Adı",
                      labelText: "Ürün Adını Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(),
                    child: DropdownButton(
                      hint: Text("Vergi Oranları"),
                      items: [
                        DropdownMenuItem(
                          child: Text("%18"),
                          value: 1,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("%8"),
                          value: 2,
                          onTap: () => null,
                        ),
                        DropdownMenuItem(
                          child: Text("%1"),
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Açıklama",
                      labelText: "Açıklama Giriniz",
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Alış Fiyatı",
                      labelText: "Alış Fiyatı Giriniz",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Satış Fiyatı",
                      labelText: "Satış Fiyatı Giriniz",
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
                Expanded(
                    child: CupertinoSwitch(
                  value: true,
                  onChanged: (value) => null,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
