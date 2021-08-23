import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: ( _ , constraints) => 
        (constraints.maxWidth > 520)
        ? _TabletDesktopMenu()
        : _MobileMenu()
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),

          SizedBox(width: 10),

          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),

          SizedBox(width: 10),

          CustomFlatButton(
            text: 'Otra página',
            onPressed: () => locator<NavigationService>().navigateTo('/abc'),
            color: Colors.black,
          )
        ],
      )
    );
  }
}


class _MobileMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),

          SizedBox(width: 10),

          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),

          SizedBox(width: 10),

          CustomFlatButton(
            text: 'Otra página',
            onPressed: () => locator<NavigationService>().navigateTo('/abc'),
            color: Colors.black,
          )
        ],
      )
    );
  }
}