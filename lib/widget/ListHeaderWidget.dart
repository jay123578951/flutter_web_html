import 'package:flutter/material.dart';

class ListHeaderWidget extends StatelessWidget {
  final String title;
  final Color titleColor;
  final bool isShowAll;

  const ListHeaderWidget(
      {super.key,
      required this.title,
      required this.titleColor,
      this.isShowAll = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16, color: titleColor, fontWeight: FontWeight.bold),
          ),
          Visibility(
              visible: isShowAll,
              child: const Text(
                '查看全部',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
