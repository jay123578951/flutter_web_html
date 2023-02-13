import 'package:flutter/material.dart';
import 'package:test_o/page/ExplorePage.dart';
import 'package:test_o/page/MyPage.dart';
import 'package:test_o/page/OcoinPage.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<StatefulWidget> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ocard"),
        ),
        body: Column(
          children: [
            Expanded(
                child: SizedBox(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [ExplorePage(), OcoinPage(), MyPage(), MyPage(), MyPage()],
              ),
            )),
            SizedBox(
              height: 48,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                TabWidget(pageController: _pageController, goPosition: 0, text: '探索', color: Colors.amber),
                TabWidget(pageController: _pageController, goPosition: 1, text: 'Ocoin', color: Colors.deepOrange),
                TabWidget(pageController: _pageController, goPosition: 2, text: '掃碼', color: Colors.blue),
                TabWidget(pageController: _pageController, goPosition: 3, text: '會員卡', color: Colors.brown),
                TabWidget(pageController: _pageController, goPosition: 4, text: '我的', color: Colors.lightGreen)
              ]),
            )
          ],
        ));
  }
}

class TabWidget extends StatelessWidget {
  final PageController pageController;
  final int goPosition;
  final String text;
  final Color color;

  const TabWidget(
      {super.key, required this.pageController, required this.goPosition, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () => {pageController.jumpToPage(goPosition)},
            child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              color: color,
              child: Text(text),
            )));
  }
}
