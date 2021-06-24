import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/constants.dart';
import 'package:on_muhasebe/core/utils/theme.dart';

class CustomMenu extends StatefulWidget {
  const CustomMenu({Key? key}) : super(key: key);
  static late List<bool> listSelected =
      List.generate(13, (index) => index != 0 ? false : true);
  static bool drawerOpen = true;
  @override
  _CustomMenuState createState() => _CustomMenuState();
}

class _CustomMenuState extends State<CustomMenu> {
  static bool drawerOpen = CustomMenu.drawerOpen;
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
              selected: CustomMenu.listSelected[0],
              leading: Tooltip(
                  message: "Ana Ekran", child: Icon(Icons.home_rounded)),
              title: Text((drawerOpen && _genislik > 199) ? 'Ana Ekran' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
                _selectedListUpdate(0);
                Navigator.pushNamed(context, HOME_PAGE_ROUTE);
              },
            ),
            ListTile(
              selected: CustomMenu.listSelected[1],
              leading: Tooltip(
                  message: "Ürün/Hizmet",
                  child: Icon(Icons.production_quantity_limits)),
              title:
                  Text((drawerOpen && _genislik > 199) ? 'Ürün/Hizmet' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
                _selectedListUpdate(1);
                Navigator.of(context).pushNamed(URUN_HIZMET_PAGE_ROUTE);
              },
            ),
            ExpansionTile(
              initiallyExpanded: CustomMenu.listSelected[2] ||
                  CustomMenu.listSelected[3] ||
                  CustomMenu.listSelected[4],
              leading: Tooltip(
                  message: "Satışlar", child: Icon(Icons.point_of_sale)),
              trailing: (drawerOpen && _genislik > 199)
                  ? Icon(Icons.keyboard_arrow_down_rounded)
                  : Icon(null),
              title: drawerOpen ? Text("Satışlar") : Text(""),
              children: [
                ListTile(
                  selected: CustomMenu.listSelected[2],
                  leading: Tooltip(
                      message: "Müşteriler",
                      child: Icon(Icons.supervised_user_circle_outlined)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Müşteriler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(2);
                    Navigator.pushNamed(
                        context, SATISLAR_MUSTERILER_PAGE_ROUTE);
                  },
                ),
                ListTile(
                  selected: CustomMenu.listSelected[3],
                  leading: Tooltip(
                      message: "Faturalar",
                      child: Icon(Icons.document_scanner_outlined)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Faturalar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(3);
                    Navigator.pushNamed(context, SATISLAR_FATURALAR_PAGE_ROUTE);
                  },
                ),
                ListTile(
                  selected: CustomMenu.listSelected[4],
                  leading: Tooltip(
                      message: "Tahsilatlar",
                      child: Icon(Icons.payments_outlined)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Tahsilatlar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(4);
                    Navigator.pushNamed(
                        context, SATISLAR_TAHSILATLAR_PAGE_ROUTE);
                  },
                ),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: CustomMenu.listSelected[5] ||
                  CustomMenu.listSelected[6] ||
                  CustomMenu.listSelected[7],
              leading: Tooltip(message: "Alışlar", child: Icon(Icons.payment)),
              trailing: (drawerOpen && _genislik > 199)
                  ? Icon(Icons.keyboard_arrow_down_rounded)
                  : Icon(null),
              title: drawerOpen ? Text("Alışlar") : Text(""),
              children: [
                ListTile(
                  selected: CustomMenu.listSelected[5],
                  leading: Tooltip(
                      message: "Tedarikçiler",
                      child: Icon(Icons.supervised_user_circle_rounded)),
                  title: Text((drawerOpen && _genislik > 199)
                      ? '   Tedarikçiler'
                      : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(5);
                    Navigator.pushNamed(
                        context, ALISLAR_TEDARIKCILER_PAGE_ROUTE);
                  },
                ),
                ListTile(
                  selected: CustomMenu.listSelected[6],
                  leading: Tooltip(
                      message: "Faturalar",
                      child: Icon(Icons.document_scanner_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Faturalar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(6);
                    Navigator.pushNamed(context, ALISLAR_FATURALAR_PAGE_ROUTE);
                  },
                ),
                ListTile(
                  selected: CustomMenu.listSelected[7],
                  leading: Tooltip(
                      message: "Ödemeler", child: Icon(Icons.payments_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Ödemeler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(7);
                    Navigator.pushNamed(context, ALISLAR_ODEMELER_PAGE_ROUTE);
                  },
                ),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: CustomMenu.listSelected[8] ||
                  CustomMenu.listSelected[9] ||
                  CustomMenu.listSelected[10],
              leading: Tooltip(
                  message: "Bankalar",
                  child: Icon(Icons.account_balance_sharp)),
              trailing: (drawerOpen && _genislik > 199)
                  ? Icon(Icons.keyboard_arrow_down_rounded)
                  : Icon(null),
              title: drawerOpen ? Text("Bankalar") : Text(""),
              children: [
                ListTile(
                  selected: CustomMenu.listSelected[8],
                  leading: Tooltip(
                      message: "Hesaplar",
                      child: Icon(Icons.credit_card_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Hesaplar' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(8);
                    Navigator.pushNamed(context, BANKALAR_HESAPLAR_PAGE_ROUTE);
                  },
                ),
                ListTile(
                  selected: CustomMenu.listSelected[9],
                  leading: Tooltip(
                      message: "Transferler",
                      child: Icon(Icons.sync_alt_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   Tansferler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(9);
                    Navigator.pushNamed(
                        context, BANKALAR_TRANSFERLER_PAGE_ROUTE);
                  },
                ),
                ListTile(
                  selected: CustomMenu.listSelected[10],
                  leading: Tooltip(
                      message: "İşlemler",
                      child: Icon(Icons.transfer_within_a_station_rounded)),
                  title: Text(
                      (drawerOpen && _genislik > 199) ? '   İşlemler' : " "),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    _selectedListUpdate(10);
                    Navigator.pushNamed(context, BANKALAR_ISLEMLER_PAGE_ROUTE);
                  },
                ),
              ],
            ),
            ListTile(
              selected: CustomMenu.listSelected[11],
              leading:
                  Tooltip(message: "Raporlar", child: Icon(Icons.add_chart)),
              title: Text((drawerOpen && _genislik > 199) ? 'Raporlar' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
                _selectedListUpdate(11);
                Navigator.pushNamed(context, RAPORLAR_PAGE_ROUTE);
              },
            ),
            ListTile(
              selected: CustomMenu.listSelected[12],
              leading: Tooltip(message: "Ayarlar", child: Icon(Icons.settings)),
              title: Text((drawerOpen && _genislik > 199) ? 'Ayarlar' : " "),
              onTap: () {
                // Update the state of the app.
                // ...
                _selectedListUpdate(12);
                Navigator.pushNamed(context, AYARLAR_PAGE_ROUTE);
              },
            ),
          ],
        ),
      ),
    );
  }

  _selectedListUpdate(int index) {
    setState(() {
      for (int i = 0; i < 13; i++) CustomMenu.listSelected[i] = (i == index);
    });
  }
}
