import 'package:flutter/material.dart';
import 'package:illness_lib/utils/constants.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
        title: const Text("Register"),
      ),
      body: Column(
        children: [
          const Text("Welcome there!"),
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
          TextButton(
            onPressed: () async => Navigator.of(context)
                .pushNamedAndRemoveUntil(loginRoute, (route) => false),
            child: const Text("Register"),
          ),
          TextButton(
            onPressed: () async => Navigator.of(context)
                .pushNamedAndRemoveUntil(loginRoute, (route) => false),
            child: const Text("Already signed up? Login"),
          )
        ],
      ),
    );
  }
}
