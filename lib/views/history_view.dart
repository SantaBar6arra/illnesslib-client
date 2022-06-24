import 'package:flutter/material.dart';
import 'package:illness_lib/components/app_loading.dart';
import 'package:illness_lib/models/user_list_model.dart';
import 'package:illness_lib/view_models/user_view_model.dart';
import 'package:illness_lib/views/side_menu_view.dart';
import 'package:provider/provider.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
        appBar: AppBar(
          title: const Text("History"),
        ),
        drawer: getSideMenu(context),
        body: Column(children: [
          _ui(userViewModel),
        ]));
  }

  Widget _ui(UserViewModel userViewModel) {
    if (userViewModel.isLoading) {
      return const AppLoading();
    }
    return Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              UserModel userModel = userViewModel.userModel[index];
              //final String name = userModel.name;
              return Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userModel.name,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 13)),
                      Text(userModel.email,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 13)),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: userViewModel.userModel.length));
  }
}
