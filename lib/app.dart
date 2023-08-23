import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/interactive_grid.dart';

class FlutterUi extends StatelessWidget {
  const FlutterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.deepPurple.shade100,
        ),
      ),
      home: const InteractiveGrid(),
    );
  }
}
