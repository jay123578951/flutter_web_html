import 'package:flutter/material.dart';
import 'package:test_o/tool/viewTool.dart';

class OcoinPage extends StatefulWidget {
  const OcoinPage({super.key});

  @override
  State<StatefulWidget> createState() => _OcoinPageState();
}

class _OcoinPageState extends State<OcoinPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getTopLayout(),
        Expanded(
            child: ListView(children: [
          getSubTopLayout(),
          ViewTool.getMidListView(),
          const SizedBox(height: 30),
          ViewTool.getLargeListView(),
          const SizedBox(height: 30),
          ViewTool.getInviteListView(),
          const SizedBox(height: 24)
        ]))
      ],
    );
  }

  Widget getTopLayout() {
    return Container(
        height: 96,
        color: Colors.black,
        child: Row(children: const [
          SizedBox(
            width: 24,
          ),
          Text('Ocoin 餘額', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey)),
          Spacer(),
          Text('3,087', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w200, color: Colors.white)),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.monetization_on_outlined,
            color: Color(0xFFFFEA00),
            size: 48,
          ),
          SizedBox(
            width: 24,
          ),
        ]));
  }

  Widget getSubTopLayout() {
    return Container(
        height: 93,
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          getTabWidget(icon: Icons.monetization_on_outlined, title: '明細紀錄'),
          getTabWidget(icon: Icons.loupe_outlined, title: '轉成 Ocoin', subTitle: '+277'),
          getTabWidget(icon: Icons.contact_support_outlined, title: '了解 Ocoin'),
        ]));
  }

  Widget getTabWidget({required IconData icon, required String title, String subTitle = ''}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [
          Icon(icon, color: Colors.black45),
          Visibility(visible: subTitle != '', child: const SizedBox(width: 4)),
          Visibility(
              visible: subTitle != '',
              child: Text(
                subTitle,
                style: const TextStyle(fontSize: 18, color: Colors.black45),
              )),
        ]),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(fontSize: 12, color: Colors.black45, fontWeight: FontWeight.bold))
      ],
    );
  }
}
