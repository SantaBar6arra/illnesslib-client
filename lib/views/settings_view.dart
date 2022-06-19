import 'package:flutter/material.dart';
import 'package:illness_lib/views/side_menu_view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: getSideMenu(context),
      body: Column(
        children: [
          Row(
            children: [
              const Text("Your email: myemail@gmail.com"),
              TextButton(
                onPressed: () => {},
                child: const Text("Change email"),
              )
            ],
          )
        ],
      ),
    );
  }
}
