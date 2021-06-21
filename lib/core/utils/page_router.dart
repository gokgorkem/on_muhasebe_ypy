import 'package:flutter/material.dart';
import 'package:on_muhasebe/core/widgets/page_root.dart';

class PageRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => PageRoot());
  }
}
