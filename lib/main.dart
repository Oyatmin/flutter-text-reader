import 'package:flutter/material.dart';
import 'package:flutter_text_reader/pages/text_list_page/text_list_page.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    TextTheme textTheme = Theme.of(context).textTheme;

    // TextTheme textTheme = createTextTheme(context, "Gowun Batang", "Gowun Batang");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const TextListPage(),
    );
  }
}
