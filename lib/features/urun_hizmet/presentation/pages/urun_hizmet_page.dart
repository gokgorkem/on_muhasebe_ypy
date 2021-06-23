import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/urun_hizmet/presentation/widgets/urun_hizmet_body.dart';

class UrunHizmetPage extends StatefulWidget {
  const UrunHizmetPage({Key? key}) : super(key: key);

  @override
  _UrunHizmetPageState createState() => _UrunHizmetPageState();
}

class _UrunHizmetPageState extends State<UrunHizmetPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: UrunHizmetBody(),
    );
  }
}
