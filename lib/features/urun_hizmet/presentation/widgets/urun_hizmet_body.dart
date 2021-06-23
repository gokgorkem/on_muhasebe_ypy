import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/utils/entities_model_repositories.dart';
import 'package:on_muhasebe/core/utils/theme.dart';

class UrunHizmetBody extends StatefulWidget {
  UrunHizmetBody({Key? key}) : super(key: key);

  final Equatable headers = EntitiesModelRepositories().urunHizmetlerHeader;
  final List<Equatable> body = EntitiesModelRepositories().urunHizmetler;
  @override
  _UrunHizmetBodyState createState() => _UrunHizmetBodyState();
}

class _UrunHizmetBodyState extends State<UrunHizmetBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemCount: (widget.body == null || widget.headers == null)
          ? 1
          : widget.body.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomColor.logoBlue),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildHeaders(),
            ),
          );
        }
        index -= 1;
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index % 2 == 0
                  ? Colors.blue.shade700
                  : CustomColor.statusBarColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _buildBody(index),
          ),
        );
      },
    );
  }

  List<Widget> _buildHeaders() {
    return List.generate(
        widget.headers.props.length + 1,
        (index) => index != widget.headers.props.length
            ? Text(
                widget.headers.props[index].toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )
            : Container(
                width: 45,
                child: Text("    "),
              ));
  }

  List<Widget> _buildBody(int index1) {
    return List.generate(
      widget.body[index1].props.length + 1,
      (index) => index != widget.body[index1].props.length
          ? Text(
              widget.body[index1].props[index].toString(),
            )
          : PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("Detay"),
                  value: "detay",
                ),
                PopupMenuItem(
                  child: Text("Düzenle"),
                  value: "düzenle",
                ),
                PopupMenuItem(
                  child: Text("Sil"),
                  value: "Sil",
                )
              ],
              onSelected: (value) => eylemButonuMethod(index1, value!),
            ),
    );
  }

  Future<dynamic> eylemButonuMethod(int index1, Object value) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(index1.toString() + value.toString()),
      ),
    );
  }
}
