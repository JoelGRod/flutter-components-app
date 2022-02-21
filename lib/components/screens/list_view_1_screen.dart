import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final List<String> games = const [
    'Encased',
    'Inscryption',
    'Darkest Dungeon',
    'SMTV'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View List I"),
        elevation: 10,
      ),
      body: ListView(
        children: [
          ...games.map(
            (game) => ListTile(
                  title: Text(game),
                  leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                )
          ).toList()
        ]
      ),
    );
  }
}
