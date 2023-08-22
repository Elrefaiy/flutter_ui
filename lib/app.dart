import 'package:flutter/material.dart';
import 'screens/grid_with_wrap.dart';

class FlutterUi extends StatelessWidget {
  const FlutterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          background: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const GridWrapView(),
    );
  }
}
