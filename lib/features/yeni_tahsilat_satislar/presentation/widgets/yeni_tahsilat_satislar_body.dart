import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text("Tahsilat Tarihi :"),
                    TextButton(
                      onPressed: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          minTime: DateTime(DateTime.now().year - 5),
                          maxTime: DateTime(DateTime.now().year + 5),
                          onConfirm: (date) {
                            setState(() {
                              _date = date;
                            });
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.tr,
                        );
                      },
                      child: Text(formatDate.format(_date)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
