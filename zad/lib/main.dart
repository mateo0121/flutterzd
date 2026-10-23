import 'package:flutter/material.dart';
import 'screens/series_list_screen.dart';

void main() {
  runApp(const SeriesApp());
}

class SeriesApp extends StatelessWidget {
  const SeriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Praćenje serija",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const SeriesListScreen(),
    );
  }
}