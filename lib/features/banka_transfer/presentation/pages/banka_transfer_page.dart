import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';
import 'package:on_muhasebe/features/banka_transfer/presentation/widgets/banka_transfer_body.dart';

class BankaTransferPage extends StatefulWidget {
  const BankaTransferPage({Key? key}) : super(key: key);

  @override
  _BankaTransferPageState createState() => _BankaTransferPageState();
}

class _BankaTransferPageState extends State<BankaTransferPage> {
  @override
  Widget build(BuildContext context) {
    return PageRoot.withBody(
      body: BankaTransferBody(),
    );
  }
}
