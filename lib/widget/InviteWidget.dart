import 'package:flutter/material.dart';

import '../tool/viewTool.dart';

class InviteWidget extends StatelessWidget {
  final int size;
  final int index;

  const InviteWidget({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    const Radius radius = Radius.circular(8);
    return Padding(
        padding: ViewTool.getListViewFirstLastPadding(size, index),
        child: SizedBox(
          width: 160,
          child: Stack(children: [
            const ClipRRect(
                borderRadius:
                    BorderRadius.only(topRight: radius, topLeft: radius),
                child: Image(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-fff2lftqIE077pFAKU1Mhbcj8YFvBbMvpA&usqp=CAU'),
                    width: 160,
                    height: 80,
                    fit: BoxFit.cover)),
            Positioned(
                top: 40,
                child: Container(
                  width: 160,
                  height: 40,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment(0, 0),
                          colors: [Color(0x001f005c), Color(0xFF1f005c)])),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                width: 160,
                height: 108,
                decoration: const BoxDecoration(
                    color: Color(0xFF1f005c),
                    borderRadius: BorderRadius.only(
                        bottomLeft: radius, bottomRight: radius)),
              ),
            ),
            Positioned(
                top: 66,
                left: 16,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '築間 幸福鍋物',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        'VIP',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '入會即享 5 點',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ])),
            Positioned.fill(
              bottom: 16,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      alignment: Alignment.center,
                      width: 56,
                      height: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: const Text('入會'))),
            ),
          ]),
        ));
  }
}
