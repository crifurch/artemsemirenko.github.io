import 'package:artemsemirenko/res.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Artem Semirenko website',
        initialRoute: '/',
        routes: {
          '/': (context) => const MainPage(),
        },
      );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipOval(
                  child: Image.asset(Res.imagesAvatar),
                ),
              ),
            ),
            const Text('Coming soon', textAlign: TextAlign.center),
          ],
        ),
      );
}
