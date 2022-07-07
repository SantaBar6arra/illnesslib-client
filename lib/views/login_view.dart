import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:illness_lib/utils/constants.dart';
import 'package:illness_lib/utils/themes.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IllnessLib"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            AutoSizeText(
              "Welcome back!",
              maxLines: 1,
              style: TextStyle(fontSize: 20.sp),
            ),
            TextField(
              controller: _email,

              // configuring the field as email
              autocorrect: false,
              enableSuggestions: false,
              keyboardType: TextInputType.emailAddress,

              decoration: const InputDecoration(
                hintText: "Email...",
              ),
            ),
            TextField(
              controller: _password,

              // configuring the field as password
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,

              decoration: const InputDecoration(
                hintText: "Password...",
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // set patient theme in case there is a patient loggin in

                // AdaptiveTheme.of(context)
                //     .setTheme(light: patientLightTheme, dark: patientDarkTheme);
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(historyRoute, (route) => false);
              },
              child: const Text("Log in"),
            ),
            TextButton(
              onPressed: () async => Navigator.of(context)
                  .pushNamedAndRemoveUntil(signupRoute, (route) => false),
              child: const Text("Don't have an account yet? Register now!"),
            ),
          ],
        ),
      ),
    );
  }
}
