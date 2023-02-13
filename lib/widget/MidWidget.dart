import 'dart:math';
import 'package:flutter/material.dart';
import '../tool/viewTool.dart';

class MidWidget extends StatelessWidget {
  final int size;
  final int index;

  const MidWidget({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(8);
    return Padding(
        padding: ViewTool.getListViewFirstLastPadding(size, index),
        child: SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ClipRRect(
                  borderRadius: BorderRadius.all(radius),
                  child: Image(
                    width: double.infinity,
                    height: 90,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: NetworkImage(
                        'https://imgv3.fotor.com/images/blog-richtext-image/part-blurry-image.jpg'),
                  )),
              const SizedBox(height: 6),
              Text('data $index',
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(height: 1),
              Text(
                  '${(Random().nextDouble() * 10).toStringAsFixed(1)}★・${Random().nextInt(10)}%回饋',
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Text('${Random().nextInt(99)}m',
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ],
          ),
        ));
  }
}
