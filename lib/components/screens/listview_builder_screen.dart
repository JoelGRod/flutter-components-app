import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imgsIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print(
      //     '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        // addFive();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addFive();

    isLoading = false;
    setState(() {});
  }

  void addFive() {
    setState(() {
      final lastId = imgsIds.last;
      imgsIds.addAll([1, 2, 3, 4, 5].map((el) => lastId + el));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            itemCount: imgsIds.length,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                placeholder: const AssetImage('assets/imgs/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${imgsIds[index]}'),
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              );
            }),
      ),
    );
  }
}
