import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final List<String> games = const [
    'Encased',
    'Inscryption',
    'Darkest Dungeon',
    'SMTV'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View II"),
        // elevation: 10,
        // backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: games.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          leading: const Icon(Icons.person),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {

          }
        ), 
        separatorBuilder: (context, index) => const Divider(), 
      ),
    );
  }
}
