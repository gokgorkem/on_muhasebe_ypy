import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/custom_app_bar.dart';
import 'package:on_muhasebe/core/widgets/custom_menu.dart';

class PageRoot extends StatefulWidget {
  Widget? body;
  PageRoot({Key? key}) : super(key: key);

  PageRoot.withBody({this.body, Key? key}) : super(key: key);

  @override
  _PageRootState createState() => _PageRootState();
}

class _PageRootState extends State<PageRoot> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Row(
        children: <Widget>[
          CustomMenu(),
          Expanded(
            child: Column(
              children: [
                CustomAppBar(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: widget.body,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
