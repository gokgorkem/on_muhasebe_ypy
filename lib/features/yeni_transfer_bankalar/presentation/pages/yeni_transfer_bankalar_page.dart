import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/yeni_transfer_bankalar/presentation/widgets/widgets.dart';

class YeniTransferBankalarPage extends StatefulWidget {
  const YeniTransferBankalarPage({Key? key}) : super(key: key);

  @override
  _YeniTransferBankalarPageState createState() => _YeniTransferBankalarPageState();
}

class _YeniTransferBankalarPageState extends State<YeniTransferBankalarPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: YeniTransferBankalarBody(),
    );
  }
}
