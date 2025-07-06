import 'package:flutter/material.dart';

class WhatsScreen extends StatelessWidget {
  const WhatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF168C4B), // WhatsApp green
        titleSpacing: 0,
        title: Row(
          children: [
            const SizedBox(width: 8),
            const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/profile_image.png'),
            ),
            const SizedBox(width: 8),
            const Text(
              'John Safwat',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14,color: Colors.white,),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.call,color: Colors.white,),
          SizedBox(width: 16),
          Icon(Icons.videocam,color: Colors.white,),
          SizedBox(width: 16),
          Icon(Icons.more_vert,color: Colors.white,),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: const [
                  IncomingBubble(text: 'Hello !'),
                  OutgoingBubble(text: 'Hello !'),
                  IncomingBubble(
                    text:
                    "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!",
                  ),
                  IncomingBubble(
                    text: 'what a Great Content Tp learn Flutter',
                    image: 'assets/route_logo.png',
                  ),
                  OutgoingBubble(text: 'what a Great Content Tp learn Flutter'),
                ],
              ),
            ),
            const InputBar(),
          ],
        ),
      ),
    );
  }
}

class IncomingBubble extends StatelessWidget {
  final String text;
  final String? image;

  const IncomingBubble({super.key, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF168C4B),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            if (image != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image!, width: 200),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class OutgoingBubble extends StatelessWidget {
  final String text;

  const OutgoingBubble({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF232D3D),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      color: const Color(0xFF181818),
      child: Row(
        children: [
          const Icon(Icons.camera_alt, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFF232D3D),
                hintText: 'Type a message...',
                hintStyle: const TextStyle(color: Colors.white54, fontSize: 12),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xFF168C4B),
            child: const Icon(Icons.mic, color: Colors.white),
          ),
        ],
      ),
    );
  }
}