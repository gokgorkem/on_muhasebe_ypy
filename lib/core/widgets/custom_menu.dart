import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/theme.dart';

class CustomMenu extends StatefulWidget {
  const CustomMenu({Key? key}) : super(key: key);

  @override
  _CustomMenuState createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  bool drawerOpen = true;
  late double _genislik;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _genislik = drawerOpen ? 200 : 57;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _genislik = drawerOpen ? 200 : 57;
    });
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          if (details.delta.dx < 0 && drawerOpen) {
            drawerOpen = false;
          }
          if (details.delta.dx > 0 && !drawerOpen) {
            drawerOpen = true;
          }
        });
      },
      child: Container(
        width: drawerOpen ? 200 : 57,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 57,
              color: CustomTheme.mainTheme.primaryColor,
              child: ListTile(
                leading: Tooltip(message: "Menu", child: Icon(Icons.menu)),
                title: Text((drawerOpen && _genislik > 199) ? "Menu" : " "),
                onTap: () {
                  // Update the state of the app.
                  // ...
                  setState(() {
                    drawerOpen = drawerOpen ? false : true;
                  });
                },
              ),
            ),
            Container(
              color: CustomTheme.mainTheme.primaryColor,
              height: 100,
              child: ListTile(
                leading: Tooltip(
                    message: "Sirket Adı", child: Icon(Icons.business_rounded)),
                title:
                    Text((drawerOpen && _genislik > 199) ? 'Sirket Adı' : " "),
              ),
            ),
            ListTile(
              leading: Tooltip(
                  message: "Ana Ekran", child: Icon(Icons.home_rounded)),
              title: Text((drawerOpen && _genislik > 199) ? 'Ana Ekran' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Tooltip(
                  message: "Ürün/Hizmet",
                  child: Icon(Icons.production_quantity_limits)),
              title:
                  Text((drawerOpen && _genislik > 199) ? 'Ürün/Hizmet' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ExpansionTile(
              leading: Tooltip(
                  message: "Satışlar", child: Icon(Icons.point_of_sale)),
              trailing: Icon(null),
              title: drawerOpen ? Text("Satışlar") : Text(""),
              children: [
                ListTile(
                  leading: Tooltip(
                      message: "Müşteriler",
                      child: Icon(Icons.supervised_user_circle_outlined)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Müşteriler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Tooltip(
                      message: "Faturalar",
                      child: Icon(Icons.document_scanner_outlined)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Faturalar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Tooltip(
                      message: "Tahsilatlar",
                      child: Icon(Icons.payments_outlined)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Tahsilatlar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Tooltip(message: "Alışlar", child: Icon(Icons.payment)),
              trailing: Icon(null),
              title: drawerOpen ? Text("Alışlar") : Text(""),
              children: [
                ListTile(
                  leading: Tooltip(
                      message: "Tedarikçiler",
                      child: Icon(Icons.supervised_user_circle_rounded)),
                  title: Text((drawerOpen && _genislik > 199)
                      ? '   Tedarikçiler'
                      : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Tooltip(
                      message: "Faturalar",
                      child: Icon(Icons.document_scanner_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Faturalar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Tooltip(
                      message: "Ödemeler", child: Icon(Icons.payments_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Ödemeler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
            ExpansionTile(
              leading: Tooltip(
                  message: "Bankalar",
                  child: Icon(Icons.account_balance_sharp)),
              trailing: Icon(null),
              title: drawerOpen ? Text("Bankalar") : Text(""),
              children: [
                ListTile(
                  leading: Tooltip(
                      message: "Hesaplar",
                      child: Icon(Icons.credit_card_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Hesaplar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Tooltip(
                      message: "Transferler",
                      child: Icon(Icons.sync_alt_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Tansferler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  leading: Tooltip(
                      message: "İşlemler",
                      child: Icon(Icons.transfer_within_a_station_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   İşlemler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
            ListTile(
              leading:
                  Tooltip(message: "Raporlar", child: Icon(Icons.add_chart)),
              title: Text((drawerOpen && _genislik > 199) ? 'Raporlar' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Tooltip(message: "Ayarlar", child: Icon(Icons.settings)),
              title: Text((drawerOpen && _genislik > 199) ? 'Ayarlar' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
