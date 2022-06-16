import 'package:flutter/material.dart';
import 'package:illness_lib/constants.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
        actions: [
          PopupMenuButton<MenuActions>(
            onSelected: (value) =>
              Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false),
            itemBuilder: (context) => [
              const PopupMenuItem<MenuActions>(
                value: MenuActions.logout,
                child: Text("Log out"),
              ),   
            ],   
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                image:  DecorationImage(
                  fit:BoxFit.fill,
                  image: AssetImage("assets/images/main_page_sidemenu_background.png")
                ),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://flagi.in.ua/images/tovari/145/flag-donetskoy-oblasti_b.jpg"),
                  ),
                  Text(
                    "My name",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  Text(
                    "myemail@gmail.com",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () => {},
                //Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => 
                Navigator.of(context).pushNamedAndRemoveUntil(settingsRoute, (route) => false),
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () => {},
                //Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () => 
                Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false),
            ),
          ]
        ),
      ),
      body: const Text("Welcome to main page"),
    );
  }
}