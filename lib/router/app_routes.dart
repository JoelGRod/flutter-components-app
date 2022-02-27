import 'package:flutter/material.dart';

import '../shared/models/models.dart';
import '../components/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final List<MenuOption> menuOptions = <MenuOption>[
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
      name: 'Cards', 
      routeName: 'cards', 
      screen: const CardScreen(),
      icon: Icons.card_giftcard
      ),
    MenuOption(
      name: 'Avatars', 
      routeName: 'avatars', 
      screen: const AvatarScreen(),
      icon: Icons.person
      ),
    MenuOption(
      name: 'Animated', 
      routeName: 'animated', 
      screen: const AnimatedScreen(),
      icon: Icons.animation
      ),
    MenuOption(
      name: 'Inputs', 
      routeName: 'inputs', 
      screen: const InputsScreen(),
      icon: Icons.input
      ),
    MenuOption(
      name: 'Sliders && Checks', 
      routeName: 'sliders', 
      screen: const SliderScreen(),
      icon: Icons.slideshow
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
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> options = {};

    options.addAll({ 
      'home': (BuildContext context) => const HomeScreen() 
    });

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