import 'dart:math';
import 'package:flutter/material.dart';
import '../tool/viewTool.dart';

class LargeWidget extends StatelessWidget {
  final int size;
  final int index;

  const LargeWidget({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(10);
    return Padding(
        padding: ViewTool.getListViewFirstLastPadding(size, index),
        child: SizedBox(
          width: 343,
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(radius)),
            margin: const EdgeInsets.only(bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ClipRRect(
                    borderRadius: BorderRadius.all(radius),
                    child: Image(
                      width: double.infinity,
                      height: 193,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                    )),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('這味泰泰 Mrs.Thai $index',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                        const SizedBox(height: 1),
                        Text('【限量】綠咖哩雞肉鍋 ${Random().nextInt(9)} 折券',
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 7),
                        Text('${Random().nextInt(99)}m',
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}
