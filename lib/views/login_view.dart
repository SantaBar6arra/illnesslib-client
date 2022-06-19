import 'package:flutter/material.dart';
import 'package:illness_lib/constants.dart';

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
  void dispose(){
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
      body: Column(
        children: [
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
            onPressed:() async =>
              Navigator.of(context).pushNamedAndRemoveUntil(mainRoute, (route) => false),
            child: const Text("Log in"),
          ),
          TextButton(   
            onPressed:() async => 
              Navigator.of(context).pushNamedAndRemoveUntil(signupRoute, (route) => false),
            child: const Text("Don't have an account yet? Register right now!"),
          ),
        ],
      ),
    );
  }
}