import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:illness_lib/views/side_menu_view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: getSideMenu(context),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Center(
              child: Column(children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://flagi.in.ua/images/tovari/145/flag-donetskoy-oblasti_b.jpg"),
                  radius: 80,
                ),
                const Text(
                  "My name",
                  style: TextStyle(fontSize: 17),
                ),
                const Text(
                  "myemail@gmail.com",
                  style: TextStyle(fontSize: 17),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: const Text("Change Info About Me"),
                ),
              ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Language"),
                    ),
                    TextButton(
                        onPressed: () => {}, child: const Text("English"))
                  ],
                ),
                const Divider(),
                InkWell(
                  onTap: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text("History"),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text("Help"),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text("About us"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Dark theme"),
                    ),
                    Switch.adaptive(
                        trackColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primaryContainer),
                        thumbColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.surface),
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                            value
                                ? AdaptiveTheme.of(context).setDark()
                                : AdaptiveTheme.of(context).setLight();
                            // ? AdaptiveTheme.of(context).setTheme(
                            //     light: patientLightTheme,
                            //     dark: patientDarkTheme)
                            // : AdaptiveTheme.of(context).setTheme(
                            //     light: doctorLightTheme,
                            //     dark: doctorDarkTheme);
                          });
                        }),
                  ],
                ),
                InkWell(
                  onTap: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Text("Log out"),
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
