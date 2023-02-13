import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      getTopLayout(),
      Expanded(
          child: ListView(
        children: [
          const SizedBox(height: 24),
          const ItemWidget(icon: Icons.favorite, title: '口袋名單'),
          const ItemWidget(icon: Icons.archive_outlined, title: '禮物盒', subTitle: '5 個未使用項目', isNew: true),
          const ItemWidget(icon: Icons.emoji_events_outlined, title: '任務專區'),
          const ItemWidget(icon: Icons.emoji_people_outlined, title: '邀請好友賺 Ocoin'),
          const ItemWidget(icon: Icons.local_activity_outlined, title: '登錄兌換序號', isShowLine: false),
          getSubItemTitle('回饋獎勵'),
          const ItemWidget(icon: Icons.attach_money_outlined, title: '設定回饋獎勵', subTitle: '已設定為 Ocoin 回饋獎勵'),
          const ItemWidget(icon: Icons.query_builder_outlined, title: '回饋獎勵明細', isShowLine: false),
          getSubItemTitle('其他'),
          const ItemWidget(icon: Icons.edit_outlined, title: '修改個人資料'),
          const ItemWidget(icon: Icons.qr_code_outlined, title: '電子發票手機條碼'),
          const ItemWidget(icon: Icons.home_outlined, title: '設定 APP 開啟初始頁'),
          const ItemWidget(icon: Icons.notifications_outlined, title: '推播通知設定'),
          const ItemWidget(icon: Icons.tune_outlined, title: '權限管理'),
          const ItemWidget(icon: Icons.error_outlined, title: '回報問題', isShowLine: false),
          const SizedBox(height: 24),
        ],
      ))
    ]);
  }

  Widget getTopLayout() {
    return Container(
        height: 112,
        color: Colors.black,
        child: Row(
          children: [
            const SizedBox(width: 16),
            ClipOval(
              child: Image.network(
                  width: 80,
                  height: 80,
                  'https://scontent.ftpe3-1.fna.fbcdn.net/v/t1.18169-9/20768204_1838223029824488_208211306105296344_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=2n7hUF_Ft4QAX9ydeBG&_nc_ht=scontent.ftpe3-1.fna&oh=00_AfBQWFaHP9Qawak7UbQ317ZZeZgLV-GKbe2qaeGnVqZVoA&oe=6405D9FC'),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('林家圳', style: TextStyle(fontSize: 16, color: Colors.white)),
                SizedBox(height: 4),
                Text('0935-782-866', style: TextStyle(fontSize: 16, color: Colors.grey))
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.notifications, size: 24, color: Colors.yellow),
                SizedBox(height: 3),
                Text('通知中心', style: TextStyle(fontSize: 12, color: Colors.yellow))
              ],
            ),
            const SizedBox(width: 28)
          ],
        ));
  }

  Widget getSubItemTitle(String title) {
    return Padding(
        padding: const EdgeInsets.all(24),
        child: Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black45)));
  }
}

class ItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final bool isNew;
  final bool isShowLine;

  const ItemWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.subTitle = '',
      this.isNew = false,
      this.isShowLine = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: Row(
            children: [
              const SizedBox(width: 16),
              SizedBox(
                  width: 48,
                  height: 48,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
                        ),
                      ),
                      Center(
                        child: Icon(icon, color: Colors.black45, size: 24),
                      ),
                      Visibility(
                          visible: isNew,
                          child: Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                  alignment: Alignment.center,
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                                  child: const Text('N',
                                      style:
                                          TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold)))))
                    ],
                  )),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Visibility(
                      visible: subTitle != '',
                      child: Text(subTitle, style: const TextStyle(fontSize: 12, color: Colors.grey))),
                ],
              )
            ],
          ),
        ),
        Visibility(
            visible: isShowLine,
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Opacity(
                opacity: 0.5,
                child: Container(height: 0.5, color: Colors.grey),
              ),
            ))
      ],
    );
  }
}
