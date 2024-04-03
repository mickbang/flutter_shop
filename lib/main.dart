import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_cc/route/application.dart';
import 'config/index.dart';
import 'provide/current_index_provide.dart';
import './pages/index_page.dart';
import 'package:provider/provider.dart';
import '../route/route.dart';

void main() {
  var providers = [
    ChangeNotifierProvider(create: (context) => CurrentIndexProvide())
  ];
  runApp(MultiProvider(
    providers: providers,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void initRoute() {

    final router = FluroRouter();
    Application.router = router;
    Routes.configRoutes(router);
  }

  @override
  Widget build(BuildContext context) {
      initRoute();

    return MaterialApp(
      title: QString.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: QColor.primaryColor,
          colorScheme:
              ColorScheme.light().copyWith(primary: QColor.primaryColor),
          primarySwatch: createMaterialColor(QColor.primaryColor),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              backgroundColor: QColor.primaryColor,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              centerTitle: true)),
      home: IndexPage(),
    );
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}
