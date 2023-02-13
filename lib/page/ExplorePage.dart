import 'package:flutter/material.dart';
import 'package:test_o/tool/viewTool.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<StatefulWidget> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final List<Widget> _allTypeList = [
    ViewTool.getSmallListView(),
    ViewTool.getADBanner(),
    ViewTool.getMidListView(),
    ViewTool.getLargeListView(),
    ViewTool.getStoryListView(),
    ViewTool.getInviteListView()
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [const SizedBox(height: 0)];
    list.addAll(_allTypeList);
    list.add(const SizedBox(height: 40));

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) => list[index],
          separatorBuilder: (context, index) => const SizedBox(height: 32),
          itemCount: list.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _allTypeList.shuffle();
        }),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
