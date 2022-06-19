import 'package:flutter/material.dart';
import 'package:illness_lib/constants.dart';
import 'package:illness_lib/views/side_menu_view.dart';

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
            onSelected: (value) => Navigator.of(context)
                .pushNamedAndRemoveUntil(loginRoute, (route) => false),
            itemBuilder: (context) => [
              const PopupMenuItem<MenuActions>(
                value: MenuActions.logout,
                child: Text("Log out"),
              ),
            ],
          ),
        ],
      ),
      drawer: getSideMenu(context),
      body: const Text("Welcome to main page"),
    );
  }
}
