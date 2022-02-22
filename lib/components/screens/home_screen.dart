import 'package:flutter/material.dart';

import 'package:components_app/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Components App'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon, color: Colors.indigo),
          onTap: () {

            // Navigation Method 1: MaterialPageRoute
            // Brings you a lot of options but it´s too verbose
            // Use it when you don't have main app routes defined

            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView2Screen()
            // );
            // Navigator.push(context, route);

            // Navigation Method 2: Navigator.pushNamed()
            // Less options than above but shorter

            Navigator.pushNamed(
              context, 
              menuOptions[index].routeName
            );
          },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length
      ),
    );
  }
}