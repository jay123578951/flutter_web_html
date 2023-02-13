import 'package:flutter/cupertino.dart';
import '../generated/assets.dart';
import '../tool/viewTool.dart';

class StoryWidget extends StatelessWidget {
  final int size;
  final int index;

  const StoryWidget({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: ViewTool.getListViewFirstLastPadding(size, index),
        child: SizedBox(
            width: 72,
            child: Column(
              children: [
                Stack(children: [
                  const Image(
                    width: 72,
                    height: 72,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://static.fotor.com/app/features/img/aiimage/scenes/a%20realistic%20fox%20in%20the%20lake%20generated%20by%20ai%20image%20creator.png'),
                  ),
                  Image.asset(Assets.imagesExploreStoreHexBorder,
                      width: 72, height: 72)
                ]),
                const SizedBox(height: 6),
                Text(
                  'data $index',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                )
              ],
            )));
  }
}
