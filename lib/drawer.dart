import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            tooltip: "Settings",
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat),
            tooltip: "Chat",
          )
          
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.red,
        // centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35), //value can be adjusted
                bottomRight: Radius.circular(35))),
        // titleSpacing: 0.0,
        elevation: 0.00,
      ),
      body: Center(child: Text("Flutter training")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            const DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("alioune"),
                accountEmail: Text("alioune@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text("A"),
                ),
              ),
            ),
            ListTile(
              title: Text("PROFILE"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("COURSE"),
              leading: Icon(Icons.book),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("FAVORITE"),
              leading: Icon(Icons.favorite),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("LOGOUT"),
              leading: Icon(Icons.logout),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
