import 'package:bases_web/ui/shared/app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AppMenu(),
            Spacer(),
            // TODO: view
            Spacer()
          ],
        )
      ),
    );
  }
}