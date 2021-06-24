import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniTahsilatSatislarBody extends StatefulWidget {
  const YeniTahsilatSatislarBody({Key? key}) : super(key: key);

  @override
  _YeniTahsilatSatislarBodyState createState() =>
      _YeniTahsilatSatislarBodyState();
}

class _YeniTahsilatSatislarBodyState extends State<YeniTahsilatSatislarBody> {
  final _formKey = GlobalKey<FormState>(debugLabel: "asd");
  late EntitiesModel entitiesModel;
  DateTime _date = DateTime.now();
  var formatDate = new DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(),
    );
  }
}
