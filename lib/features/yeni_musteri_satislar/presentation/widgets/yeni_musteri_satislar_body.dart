import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:on_muhasebe/core/utils/model_base.dart';

class YeniMusteriSatislarBody extends StatefulWidget {
  const YeniMusteriSatislarBody({Key? key}) : super(key: key);

  @override
  _YeniMusteriSatislarBodyState createState() => _YeniMusteriSatislarBodyState();
}

class _YeniMusteriSatislarBodyState extends State<YeniMusteriSatislarBody> {
  final _formKey = GlobalKey<FormState>(debugLabel: "asd");
  late EntitiesModel entitiesModel;
  DateTime _date = DateTime.now();
  var formatDate = new DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
