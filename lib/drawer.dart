import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text("drawer navigation")),
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
              onTap: () =>  Navigator.pop(context),
            ),
            ListTile(title: Text("LOGOUT"), leading: Icon(Icons.logout), onTap: () => Navigator.pop(context),)
          ],
        ),
      ),
    );
  }
}
