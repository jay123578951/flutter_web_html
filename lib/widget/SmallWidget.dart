import 'package:flutter/material.dart';
import '../tool/viewTool.dart';

class SmallWidget extends StatelessWidget {
  final int size;
  final int index;

  const SmallWidget({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(8);
    return Padding(
      padding: ViewTool.getListViewFirstLastPadding(size, index),
      child: SizedBox(
        width: 104,
        child: Card(
            margin: const EdgeInsets.only(bottom: 4),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(radius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ClipRRect(
                  borderRadius:
                      BorderRadius.only(topLeft: radius, topRight: radius),
                  child: Image(
                    width: double.infinity,
                    height: 58,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: NetworkImage(
                        'https://miro.medium.com/max/1400/0*6rbe1FVWIoZGgZdH.webp'),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text('data $index',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)))
              ],
            )),
      ),
    );
  }
}
