library easy_context;
import 'package:flutter/widgets.dart';

extension MediaQueryHelper on BuildContext{
  Orientation get orientation => MediaQuery.of(this).orientation;
  double get width => MediaQuery.of(this).size.width;
  Size get size => MediaQuery.of(this).size;
  double get height => MediaQuery.of(this).size.height;
  double get statusBarHeight => MediaQuery.of(this).viewPadding.top;
}

extension NavigationHelper on BuildContext{
  Future<T?> push<T>(Route<T> route) => Navigator.of(this).push<T>(route);
  void pop<T>([T? result]) => Navigator.of(this).pop<T>(result);
  bool canPop() => Navigator.of(this).canPop();
  Future<T?> pushAndRemoveUntil<T>(Route<T> newRoute, bool Function(Route route) predicate ) => Navigator.of(this).pushAndRemoveUntil<T>(newRoute, predicate);
  Future<T?> pushNamed<T>(String routeName,{Object? arguements}) => Navigator.of(this).pushNamed<T>(routeName,arguments: arguements);
  Future<T?> pushNamedAndRemoveUntil<T>(String newRouteName,bool Function(Route route) predicate,{Object? arguements}) => Navigator.of(this).pushNamedAndRemoveUntil<T>(newRouteName,predicate,arguments: arguements);
  void popUntil(bool Function(Route dynamic) predicate ) => Navigator.of(this).popUntil(predicate);
}

extension WidgetExtension on int {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}


