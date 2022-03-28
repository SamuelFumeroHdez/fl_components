import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const ListView1Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const ListView2Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'alert', name: 'Alerta', screen: const AlertScreen(), icon: Icons.warning_amber),
    MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.contact_mail),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen()});

    for(final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;

  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
        builder: (context) => const AlertScreen(),
    );
  }
}
