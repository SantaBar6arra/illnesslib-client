import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:illness_lib/utils/constants.dart';
import 'package:illness_lib/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({Key? key}) : super(key: key);

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
        title: const Text("Appointment info"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Name: ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
                Text(
                  userViewModel.selectedUser?.name ?? "",
                  style: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Date: ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              Text(
                userViewModel.selectedUser?.address.geo.lat ?? "",
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Time: ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              Text(
                userViewModel.selectedUser?.id.toString() ?? "",
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Sympthoms: ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              Text(
                userViewModel.selectedUser?.address.street ?? "",
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
            ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Program's suggestion: ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                  Flexible(
                    child: Text(
                      userViewModel.selectedUser?.company.catchPhrase ?? "",
                      style: TextStyle(color: Colors.black, fontSize: 16.sp),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
