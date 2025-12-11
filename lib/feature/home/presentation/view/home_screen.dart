import '../../../../quick_chat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chatList = [
      {
        "name": "Metal Exchange",
        "message": "Hi nouman",
        "time": "10 min",
        "unreadCount": 1,
        "imageUrl": "assets/images/profile.png",
      },
      {
        "name": "Michael tony",
        "message": "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
        "time": "10 min",
        "unreadCount": 2,
        "imageUrl": "assets/images/profile2.png",
      },
      {
        "name": "Joseph ray",
        "message": "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
        "time": "10 min",
        "unreadCount": 2,
        "imageUrl": "assets/images/profile.png",
      },
      {
        "name": "Thomas adison",
        "message": "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
        "time": "10 min",
        "unreadCount": 1,
        "imageUrl": "assets/images/profile2.png",
      },
      {
        "name": "Thomas adison",
        "message": "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
        "time": "10 min",
        "unreadCount": 2,
        "imageUrl": "assets/images/profile2.png",
      },
      {
        "name": "Thomas adison",
        "message": "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
        "time": "10 min",
        "unreadCount": 2,
        "imageUrl": "assets/images/profile2.png",
      },
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF7B3FD3),
        child: const Icon(Icons.chat, color: Colors.white),
      ),
      body: Column(
        children: [
          CustomTopBar(),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: chatList.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final chat = chatList[index];
                return ChatTile(
                  onTap: () {
                    context.goNamed(Routes.chat.name);
                  },
                  name: chat["name"],
                  message: chat["message"],
                  time: chat["time"],
                  unreadCount: chat["unreadCount"],
                  imageUrl: chat["imageUrl"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
