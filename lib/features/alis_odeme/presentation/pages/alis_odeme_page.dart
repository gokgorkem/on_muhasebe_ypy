import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/alis_odeme/presentation/widgets/alis_odeme_body.dart';

class AlislarOdemePage extends StatefulWidget {
  const AlislarOdemePage({Key? key}) : super(key: key);

  @override
  _AlislarOdemePageState createState() => _AlislarOdemePageState();
}

class _AlislarOdemePageState extends State<AlislarOdemePage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: AlislarOdemeBody(),
    );
  }
}
