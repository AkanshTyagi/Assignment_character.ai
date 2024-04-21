import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 60), // Placeholder icon
          ),
          SizedBox(height: 10),
          Text(
            'Hello, Sender Name!', // Replace with actual sender name
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'City Name', // Replace with actual city name
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                MessageBubble(
                  message: 'Hello there!',
                  isSender: true,
                ),
                MessageBubble(
                  message: 'Hi! How are you?',
                  isSender: false,
                ),
                MessageBubble(
                  message: 'I\'m doing well, thanks! How about you?',
                  isSender: true,
                ),
                MessageBubble(
                  message: 'I\'m good too. Just busy with work.',
                  isSender: false,
                ),
                MessageBubble(
                  message: 'That sounds hectic. Take care!',
                  isSender: true,
                ),
                MessageBubble(
                  message: 'Thanks! You too.',
                  isSender: false,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Send message logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.person), // Placeholder icon
                    ),
                    title: Text(
                      'Sender Name', // Replace with actual sender name
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      'sender@example.com', // Replace with actual email
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.upload),
              title: Text('Upload'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.thumb_down),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.flag),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Hello and Welcome to your next adventure!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('New Chat'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.push_pin),
              title: Text('Pinned'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person'),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSender;

  const MessageBubble({
    required this.message,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isSender ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          message,
          style: TextStyle(color: isSender ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
