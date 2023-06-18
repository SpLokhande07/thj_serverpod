import 'package:flutter/material.dart';

abstract class Breakpoints {
  /// Max width for a large layout.
  static const double large = 1500;

  /// Max width for a medium layout.
  static const double medium = 1100;

  /// Max width for a small layout.
  static const double small = 800;

  /// Max width for an extra small layout.
  static const double extraSmall = 500;
}

typedef ResponsiveLayoutWidgetBuilder = Widget Function(BuildContext, Widget?);

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({
    Key? key,
    this.extraSmall,
    this.small,
    this.medium,
    this.large,
    this.extraLarge,
    this.child,
  });

  /// [ResponsiveLayoutWidgetBuilder] for extra small layout.
  /// Mostly for small screen mobile devices
  final ResponsiveLayoutWidgetBuilder? extraSmall;

  /// [ResponsiveLayoutWidgetBuilder] for small layout.
  /// Mostly for big screen mobile devices
  final ResponsiveLayoutWidgetBuilder? small;

  /// [ResponsiveLayoutWidgetBuilder] for medium layout.
  /// Mostly for tablets
  final ResponsiveLayoutWidgetBuilder? medium;

  /// [ResponsiveLayoutWidgetBuilder] for large layout.
  /// Mostly for small screen monitors
  final ResponsiveLayoutWidgetBuilder? large;

  /// [ResponsiveLayoutWidgetBuilder] for extraLarge layout.
  /// Mostly for big screen monitors
  final ResponsiveLayoutWidgetBuilder? extraLarge;

  /// Optional child widget which will be passed
  /// to builders as a way to share/optimize shared layout.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      print(constraints);
      if (constraints.maxWidth <= Breakpoints.extraSmall &&
          extraSmall != null) {
        return extraSmall!(context, child);
      }

      if (constraints.maxWidth <= Breakpoints.small && small != null) {
        return small!(context, child);
      }

      if (constraints.maxWidth <= Breakpoints.medium && medium != null) {
        return medium!(context, child);
      }

      if (constraints.maxWidth <= Breakpoints.large && large != null) {
        return large!(context, child);
      }
      if (extraLarge != null) {
        return extraLarge!(context, child);
      }
      return Container();
    });
  }
}
