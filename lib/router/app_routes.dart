import 'package:flutter/material.dart';

import '../shared/models/models.dart';
import '../components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final List<MenuOption> menuOptions = <MenuOption>[
    MenuOption(
      name: 'Home', 
      routeName: 'home', 
      screen: const HomeScreen(),
      icon: Icons.home
      ),
    MenuOption(
      name: 'List View I', 
      routeName: 'list_view1', 
      screen: const ListView1Screen(),
      icon: Icons.list
      ),
    MenuOption(
      name: 'List View II', 
      routeName: 'list_view2', 
      screen: const ListView2Screen(),
      icon: Icons.list_alt
      ),
    MenuOption(
      name: 'Alert', 
      routeName: 'alert', 
      screen: const AlertScreen(),
      icon: Icons.add_alert_outlined
      ),
    MenuOption(
      name: 'Card', 
      routeName: 'card', 
      screen: const CardScreen(),
      icon: Icons.card_giftcard
      ),
  ];

  // Routes Map Way I
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'      : (BuildContext context) => const HomeScreen(),
  //   'list_view1': (BuildContext context) => const ListView1Screen(),
  //   'list_view2': (BuildContext context) => const ListView2Screen(),
  //   'alert'     : (BuildContext context) => const AlertScreen(),
  //   'card'      : (BuildContext context) => const CardScreen(),
  // };

  // Routes Map Way II:
  static Map<String, Widget Function(BuildContext)> getMenuOptions() {
    final Map<String, Widget Function(BuildContext)> options = {};

    for (final option in menuOptions) {
      options.addAll(
        { option.routeName: (BuildContext context) => option.screen }
      );
    }

    return options;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

}