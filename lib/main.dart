import 'package:flutter/material.dart';
import 'chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character.ai Replica',
      debugShowCheckedModeBanner: false, // Hide debug ribbon
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character.ai Replica'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10), // Add space for the search bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '🔍 Search For Character',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0), // Rounded edges
                            ),
                            filled: true,
                            fillColor: Colors.grey[300], // Light black color
                          ),
                          style: TextStyle(color: Colors.white), // Text color
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Add space between search bar and grid view
                Row(
                  children: [
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(30, (index) {
                          return GestureDetector(
                            onTap: () {
                              // Add navigation logic for each tile
                              print('Tile $index clicked');
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChatScreen()), // Navigate to the chat screen
                              );
                            },
                            child: GridItemWithImageAndText(
                              text: index == 1 ? 'Eddie Explains' : 'Some random text $index',
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Add space below the grid view
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Create a Character',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Not vibing with any characters? Create one of your own! Customize things like their voice, conversation starts, their tone, and more!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add onPressed action for About button
                            },
                            child: Text('About'),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Add onPressed action for Careers button
                            },
                            child: Text('Careers'),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Add onPressed action for Blog button
                            },
                            child: Text('Blog'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.black,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Character.ai',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context); // Close the drawer
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text(
                  'Create',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add onPressed action for Create button
                },
                tileColor: Colors.black,
              ),
              ListTile(
                leading: Icon(Icons.explore),
                title: Text(
                  'Discover',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add onPressed action for Discover button
                },
                tileColor: Colors.black,
              ),
              ListTile(
                title: Text(
                  'Chats',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add onPressed action for Chats
                },
                tileColor: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'AkT',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add navigation logic for AkT
                },
                tileColor: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'Rockstart',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add navigation logic for Rockstart
                },
                tileColor: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'HEROheera',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add navigation logic for HEROheera
                },
                tileColor: Colors.black,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'Shaktiman',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Add navigation logic for Shaktiman
                },
                tileColor: Colors.black,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Add onPressed action for Sign In button
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add onPressed action for Sign Up button
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  primary: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Character Guide'),
                    onTap: () {
                      // Add navigation logic for Character Guide
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About us'),
                    onTap: () {
                      // Add navigation logic for About us
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.support),
                    title: Text('Support'),
                    onTap: () {
                      // Add navigation logic for Support
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Safety Center'),
                    onTap: () {
                      // Add navigation logic for Safety Center
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text('Privacy Policy'),
                    onTap: () {
                      // Add navigation logic for Privacy Policy
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.description),
                    title: Text('Terms of Service'),
                    onTap: () {
                      // Add navigation logic for Terms of Service
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text('Your Privacy Choices'),
                    onTap: () {
                      // Add navigation logic for Your Privacy Choices
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.help_outline),
      ),
    );
  }
}

class GridItemWithImageAndText extends StatelessWidget {
  final String text;

  const GridItemWithImageAndText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add navigation logic for each tile
        print('Tile $text clicked');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()), // Navigate to the chat screen
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // Add border for visual separation
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 20,
                child: Icon(Icons.person), // Default cartoon symbol
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Text(
                    'Some additional information',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
