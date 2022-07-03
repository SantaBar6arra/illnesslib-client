import 'package:flutter/material.dart';
import 'package:illness_lib/utils/constants.dart';
import 'package:illness_lib/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

class PatientView extends StatelessWidget {
  const PatientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async => Navigator.of(context)
              .pushNamedAndRemoveUntil(historyRoute, (route) => false),
        ),
        title: const Text("History visit"),
      ),
      body: Column(
        children: [
          Text(
            userViewModel.selectedUser?.name ?? "",
            style: const TextStyle(color: Colors.black),
          ),
          Text(
            userViewModel.selectedUser?.email ?? "",
            style: const TextStyle(color: Colors.black),
          ),
          Text(
            userViewModel.selectedUser?.id.toString() ?? "",
            style: const TextStyle(color: Colors.black),
          ),
          Text(
            userViewModel.selectedUser?.address.street ?? "",
            style: const TextStyle(color: Colors.black),
          ),
          Text(
            userViewModel.selectedUser?.company.catchPhrase ?? "",
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
