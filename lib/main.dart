import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:on_muhasebe/core/utils/constants.dart';
import 'package:on_muhasebe/core/utils/page_router.dart';

import 'core/utils/theme.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  _setupLogging();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.mainTheme,
      onGenerateRoute: PageRouter.generateRoute,
      initialRoute: ROOT_PAGE_ROUTE,
    );
  }
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
