import 'package:components_app/shared/themes/main_theme.dart';
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

    // HTTP Request Here - Temporal solution
    await Future.delayed(const Duration(seconds: 3));
    addFive();

    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 200,
      duration: const Duration(seconds: 1), 
      curve: Curves.fastOutSlowIn
    );
  }

  Future<void> refreshScreen() async {
    await Future.delayed( const Duration(seconds: 2) );
    final int lastId = imgsIds.last + 1;
    imgsIds.clear();
    imgsIds.add(lastId);
    addFive();
  }

  // Add items Example function
  void addFive() {
    setState(() {
      final lastId = imgsIds.last;
      imgsIds.addAll([1, 2, 3, 4, 5].map((el) => lastId + el));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: MainTheme.primaryColor,
              backgroundColor: Colors.white.withOpacity(0.7),
              onRefresh: refreshScreen,
              child: ListView.builder(
                  controller: scrollController,
                  physics: const BouncingScrollPhysics(),
                  itemCount: imgsIds.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeInImage(
                      placeholder:
                          const AssetImage('assets/imgs/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${imgsIds[index]}'),
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    );
                  }),
            ),
            if (isLoading)
              Positioned(
                  top: size.height * 0.5 - 50,
                  left: size.width * 0.5 - 50,
                  child: const LoadingIcon())
          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: MainTheme.primaryColor,
      ),
    );
  }
}
