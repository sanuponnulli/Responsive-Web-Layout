import 'package:flutter/material.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: mobileBody,
          );
        } else {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: desktopBody,
          );
        }
      },
    );
  }
}
