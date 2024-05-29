import 'package:flutter/material.dart';
import 'package:illness_lib/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Drawer getSideMenu(BuildContext context) => Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: ListView(children: <Widget>[
        Container(
          color: Theme.of(context).colorScheme.secondary,
          child: const Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://flagi.in.ua/images/tovari/145/flag-donetskoy-oblasti_b.jpg"),
                radius: 50,
              ),
              Text("My name",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
              Text("myemail@gmail.com",
                  style: TextStyle(color: Colors.white, fontSize: 17)),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.history, color: Colors.white),
          title: const Text('History', style: TextStyle(color: Colors.white)),
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(historyRoute, (route) => false),
        ),
        ListTile(
          leading: const Icon(Icons.settings, color: Colors.white),
          title: const Text('Settings', style: TextStyle(color: Colors.white)),
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(settingsRoute, (route) => false),
        ),
        ListTile(
            leading: const Icon(Icons.help, color: Colors.white),
            title: const Text('Help', style: TextStyle(color: Colors.white)),
            onTap: () async {
              Uri url = Uri.parse(helpUrl);
              await canLaunchUrl(url)
                  ? await launchUrl(url, mode: LaunchMode.externalApplication)
                  : throw "Cannot launch $helpUrl";
            }),
        ListTile(
          leading: const Icon(Icons.exit_to_app, color: Colors.white),
          title: const Text('Logout', style: TextStyle(color: Colors.white)),
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(loginRoute, (route) => false),
        ),
      ]),
    );
