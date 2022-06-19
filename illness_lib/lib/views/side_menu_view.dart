import 'package:flutter/material.dart';
import 'package:illness_lib/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Drawer getSideMenu(BuildContext context) => Drawer(
      child: ListView(children: <Widget>[
        Container(
          color: Colors.blue.shade700,
          child: Column(
            children: const [
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
          leading: const Icon(Icons.history),
          title: const Text('History'),
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(historyRoute, (route) => false),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(settingsRoute, (route) => false),
        ),
        ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help'),
            onTap: () async {
              Uri url = Uri.parse(helpUrl);
              await canLaunchUrl(url)
                  ? await launchUrl(url, mode: LaunchMode.externalApplication)
                  : throw "Cannot launch $helpUrl";
            }),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Logout'),
          onTap: () => Navigator.of(context)
              .pushNamedAndRemoveUntil(loginRoute, (route) => false),
        ),
      ]),
    );
