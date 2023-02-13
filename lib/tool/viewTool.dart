import 'package:flutter/material.dart';
import 'package:test_o/generated/assets.dart';
import '../widget/ListHeaderWidget.dart';
import '../widget/SmallWidget.dart';
import '../widget/InviteWidget.dart';
import '../widget/LargeWidget.dart';
import '../widget/MidWidget.dart';
import '../widget/StoryWidget.dart';

class ViewTool {
  static getListViewFirstLastPadding(int size, int index) {
    return EdgeInsets.only(
        left: index == 0 ? 16 : 0, right: index == size - 1 ? 16 : 0);
  }

  static Widget getSmallListView() {
    List<Widget> list =
        List.generate(10, (index) => SmallWidget(size: 10, index: index));
    return SizedBox(
        height: 102 + 4,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => list[index],
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemCount: list.length));
  }

  static Widget getMidListView() {
    List<Widget> list =
        List.generate(10, (index) => MidWidget(size: 10, index: index));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListHeaderWidget(title: '＃夯夯灰鴿', titleColor: Colors.red),
        SizedBox(
          height: 151,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => list[index],
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: list.length),
        )
      ],
    );
  }

  static Widget getLargeListView() {
    List<Widget> list =
        List.generate(10, (index) => LargeWidget(size: 10, index: index));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListHeaderWidget(
            title: '＃嚐鮮優惠券專區',
            titleColor: Color.fromARGB(0xFF, 0x68, 0x68, 0x68)),
        SizedBox(
            height: 286 + 4,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => list[index],
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemCount: list.length))
      ],
    );
  }

  static Widget getStoryListView() {
    List<Widget> list =
        List.generate(10, (index) => StoryWidget(size: 10, index: index));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListHeaderWidget(
            title: '美食動態', titleColor: Colors.grey, isShowAll: false),
        SizedBox(
            height: 98,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => list[index],
                separatorBuilder: (context, index) => const SizedBox(
                      width: 12,
                    ),
                itemCount: list.length))
      ],
    );
  }

  static Widget getInviteListView() {
    List<Widget> list =
        List.generate(10, (index) => InviteWidget(size: 10, index: index));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ListHeaderWidget(
            title: '品牌入會好禮專區',
            titleColor: Color.fromARGB(0xFF, 0x68, 0x68, 0x68)),
        SizedBox(
            height: 188,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => list[index],
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemCount: list.length))
      ],
    );
  }

  static Widget getADBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Image.asset(Assets.imagesAdBanner, fit: BoxFit.contain),
    );
  }
}
