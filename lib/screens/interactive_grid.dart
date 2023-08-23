import 'package:flutter/material.dart';

class InteractiveGrid extends StatefulWidget {
  const InteractiveGrid({super.key});

  @override
  State<InteractiveGrid> createState() => _InteractiveGridState();
}

class _InteractiveGridState extends State<InteractiveGrid> {
  double top = 20;
  double left = 20;
  int coulmns = 4; // must be even
  int spaces = 3; // coulmns -1
  double spacing = 25;
  double childWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            top += (details.delta.dy);
            left += (details.delta.dx);
          });
        },
        child: Stack(
          children: [
            AnimatedPositioned(
              top: top,
              left: left,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
              child: SizedBox(
                width: (coulmns * childWidth) + (spaces * spacing),
                child: Wrap(
                  spacing: spacing,
                  runSpacing: spacing,
                  children: List.generate(
                    20,
                    (index) {
                      return Transform.translate(
                        offset: Offset(0, index.isOdd ? 150 : 0),
                        child: Container(
                          width: childWidth,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[400],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              index.toString(),
                              style: TextStyle(
                                fontSize: 200,
                                color: Colors.deepPurple[100],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
