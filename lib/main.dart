import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: Center(
        child: Text(
          "Drawer",
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: [
        Icon(Icons.tag_faces),
        Icon(Icons.favorite),
        Icon(Icons.notifications_none),
      ],
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-vector/hand-painted-background-violet-orange-colours_23-2148427578.jpg?w=2000"),
              ),
              accountEmail: Text("mdzhoman@gmail.com"),
              accountName: Text("Zhoman"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("ZH"),
                )
              ],
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Dashboard"),
              leading: Icon(Icons.dashboard),
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("Help & Feedback"),
              leading: Icon(Icons.help),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text("Messages"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
