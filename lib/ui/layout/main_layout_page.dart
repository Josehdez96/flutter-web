import 'package:bases_web/ui/shared/app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    Key? key,
    required this.child
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AppMenu(),
            Spacer(),
            Expanded(child: child),
            Spacer()
          ],
        )
      ),
    );
  }
}