import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:illness_lib/components/app_loading.dart';
import 'package:illness_lib/models/user_list_model.dart';
import 'package:illness_lib/utils/constants.dart';
import 'package:illness_lib/view_models/user_view_model.dart';
import 'package:illness_lib/views/history_item_view.dart';
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
          Container(
            color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Doctor: name surname"),
                Flexible(
                  child: Padding(
                      padding: EdgeInsets.only(left: 50.sp),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search for patients...",
                          hintStyle: TextStyle(
                            fontSize: 11.sp,
                          ),
                        ),
                      )),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.teal,
                  onPressed: () {},
                ),
              ],
            ),
          ),
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
              return InkWell(
                onTap: () async {
                  userViewModel.setSelectedUser(userModel);
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      appointmentRoute, (route) => false);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30.sp, vertical: 5),
                      child: HistoryItemView(
                          name: userModel.name,
                          date: userModel.address.geo.lat,
                          time: userModel.id.toString(),
                          suggestion: userModel.company.catchPhrase,
                          sympthoms: userModel.address.street),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  thickness: 0,
                  height: 0,
                  color: Colors.white,
                ),
            itemCount: userViewModel.userModel.length));
  }
}
