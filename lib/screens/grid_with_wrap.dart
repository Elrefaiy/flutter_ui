import 'package:flutter/material.dart';

class GridWrapView extends StatefulWidget {
  const GridWrapView({super.key});

  @override
  State<GridWrapView> createState() => _GridWrapViewState();
}

class _GridWrapViewState extends State<GridWrapView> {
  double top = -450;
  double left = -450;
  int columns = 4; //must be even, so each column has either odd or even index
  int spaces = 3; //columns - 1, number of spaces between columns
  double childWidth = 220;
  double spacing = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(
            () {
              top += (details.delta.dy * 2);
              left += (details.delta.dx * 2);
            },
          );
        },
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              curve: Curves.easeOut,
              top: top,
              left: left,
              duration: const Duration(
                milliseconds: 500,
              ),
              child: SizedBox(
                width: (columns * childWidth) + (spaces * spacing),
                child: Wrap(
                  spacing: spacing,
                  runSpacing: spacing,
                  children: List.generate(
                    20,
                    (index) {
                      return Transform.translate(
                        offset: Offset(
                          0,
                          index.isEven ? 150 : 0,
                        ),
                        child: Container(
                          width: childWidth,
                          height: 420,
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              index.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 200,
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
