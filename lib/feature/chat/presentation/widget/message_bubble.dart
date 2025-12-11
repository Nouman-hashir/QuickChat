import '../../../../quick_chat.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender; // true = sender (right), false = receiver (left)
  final String? avatarUrl; // optional avatar URL or asset path
  final String time;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isSender,
    this.avatarUrl,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.only(
      topLeft: isSender ? const Radius.circular(25) : const Radius.circular(25),
      topRight: isSender ? const Radius.circular(25) : const Radius.circular(20),
      bottomLeft: isSender ? const Radius.circular(20) : const Radius.circular(0),
      bottomRight:  isSender ? const Radius.circular(0) : const Radius.circular(20),
    );

    final alignment = isSender ? Alignment.centerRight : Alignment.centerLeft;
    final color = isSender ? Colors.purple[300] : Colors.purple[100];
    // final margin = isSender ? const EdgeInsets.only(left: 60, right: 16, top: 8, bottom: 8) : const EdgeInsets.only(right: 60, left: 16, top: 8, bottom: 8);
    // final avatarAlignment = isSender ? Alignment.topRight : Alignment.topLeft;

    return Align(
      alignment: alignment,
      child: Row(
        mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSender && avatarUrl != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(avatarUrl!),
              ),
            ),
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            constraints: const BoxConstraints(maxWidth: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: const TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    time,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          if (isSender && avatarUrl != null)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(avatarUrl!),
              ),
            ),
        ],
      ),
    );
  }
}