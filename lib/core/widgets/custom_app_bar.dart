import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/constants.dart';
import 'package:on_muhasebe/core/utils/theme.dart';
import 'package:searchfield/searchfield.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  String deger = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 57,
          color: CustomTheme.mainTheme.primaryColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            searchAppBarPanel(context),
            userAppBarPanel(context),
          ],
        ),
      ],
    );
  }

  Container userAppBarPanel(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.add_circle,
            ),
            onPressed: () => buildShowDialog(context),
          ),
          SizedBox(width: 20),
          PopupMenuButton(
            child: Icon(Icons.hearing_sharp),
            itemBuilder: (context) => [PopupMenuItem(child: Text("asd"))],
            offset: Offset(50, 50),
          ),
          SizedBox(width: 20),
          Text("Kullanıcı Adı"),
          SizedBox(width: 10),
          PopupMenuButton(
            child: Icon(Icons.account_box),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Profil"), value: "profil"),
              PopupMenuItem(child: Text("Güvenli çıkış"), value: "çıkıs"),
            ],
            onSelected: (value) => eylemButonuMethod(value!),
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }

  Future<dynamic> eylemButonuMethod(Object value) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(value.toString()),
      ),
    );
  }

  Container searchAppBarPanel(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 300,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1),
      ),
      child: SearchField(
        searchInputDecoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: "Arama",
          border: InputBorder.none,
        ),
        suggestions: ["ali", "veli", "ahmet"],
        onTap: (x) => buildShowDialog(context),
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Container(
          height: 300,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Divider(),
              Text(
                "Satışlar",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(
                                        SATISLAR_YENI_MUSTERI_PAGE_ROUTE),
                                icon: Icon(
                                    Icons.supervised_user_circle_outlined)),
                            Text("Yeni Müşteri"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(SATISLAR_YENI_FATURA_PAGE_ROUTE),
                                icon: Icon(Icons.document_scanner_outlined)),
                            Text("Yeni Fatura"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.of(context)
                                    .pushNamed(
                                        SATISLAR_YENI_TAHSILAT_PAGE_ROUTE),
                                icon: Icon(Icons.payments_outlined)),
                            Text("Yeni Tahsilat"),
                          ],
                        ),
                      ),
                    ]),
              ),
              Divider(),
              Text(
                "Alışlar",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.of(context).pushNamed(ALISLAR_YENI_TEDARIKCI_PAGE_ROUTE),
                                icon:
                                    Icon(Icons.supervised_user_circle_rounded)),
                            Text("Yeni Tedarikci"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () => Navigator.of(context).pushNamed(ALISLAR_YENI_FATURA_PAGE_ROUTE),
                                icon: Icon(Icons.document_scanner_rounded)),
                            Text("Yeni Fatura"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () => null,
                                icon: Icon(Icons.payments_rounded)),
                            Text("Yeni Ödeme"),
                          ],
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
