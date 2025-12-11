

import '../../../../quick_chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [
    {
      'message': 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore.',
      'isSender': false,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
    {
      'message': 'Sed Do Eiusmod Tempor Incididunt Ut Labore Et Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostud Exercitation Ullamco Laboris Nisi Ut Aliquip.',
      'isSender': true,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
    {
      'message': 'Lorem Ipsum Dolor Sit',
      'isSender': false,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
    {
      'message': 'Sed Do Eiusmod Tempor Incididunt Ut Labore Et Magna Aliqua. Ut Enim Ad Minim Veniam.',
      'isSender': true,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
    {
      'message': 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing',
      'isSender': false,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
    {
      'message': 'Sed Do Eiusmod Tempor Incididunt Ut Labore Et',
      'isSender': true,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
    {
      'message': 'Ok',
      'isSender': false,
      'avatar': 'assets/images/profile2.png',
      'time': '10 AM'
    },
  ];

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add({
          'message': text,
          'isSender': true,
          'avatar': 'assets/images/profile.png', // sender avatar
          'time': 'Now'
        });
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatAppBar(name: "Michael tony", phone: "+43 123-456-7890"),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return ChatBubble(
                  message: msg['message'],
                  isSender: msg['isSender'],
                  avatarUrl: msg['avatar'],
                  time: msg['time'],
                );
              },
            ),
          ),
          MessageInputBar(
            controller: _messageController,
            onSend: _sendMessage,
          ),
        ],
      ),
    );
  }
}