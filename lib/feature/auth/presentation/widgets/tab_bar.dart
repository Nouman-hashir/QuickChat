import '../../../../quick_chat.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  const CustomTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      labelColor: Color(0xff3D3D3D),
      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      unselectedLabelColor: Color(0xff3D3D3D),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: const Color.fromARGB(255, 132, 57, 238),
      indicatorPadding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      dividerColor: Colors.transparent,
      tabs: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            children: [
              Icon(Icons.phone_android_outlined, size: 25, color: const Color.fromARGB(255, 132, 57, 238)),
              SizedBox(width: 6),
              Tab(text: "Login"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            children: [
              Icon(Icons.verified_user_outlined, size: 25, color: const Color.fromARGB(255, 132, 57, 238)),
              SizedBox(width: 6),
              Tab(text: "Verification"),
            ],
          ),
        ),
      ],
    );
  }
}
