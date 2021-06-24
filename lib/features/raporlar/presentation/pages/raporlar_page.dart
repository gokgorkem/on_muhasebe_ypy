import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/raporlar/presentation/widgets/raporlar_body.dart';

class RaporlarPage extends StatefulWidget {
  const RaporlarPage({Key? key}) : super(key: key);

  @override
  _RaporlarPageState createState() => _RaporlarPageState();
}

class _RaporlarPageState extends State<RaporlarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: RaporlarBody(),
    );
  }
}
