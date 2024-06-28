import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeHandler {
  static void addChild(BuildContext context) {
    context.go('/create');
  }
}
