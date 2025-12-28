import 'package:flutter/material.dart';

class StyledContainer extends StatelessWidget {
  const StyledContainer({super.key, required this.colors, required this.child});
  final List<Color> colors;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
