import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:illness_lib/utils/constants.dart';
import 'package:illness_lib/utils/themes.dart';
import 'package:illness_lib/view_models/user_view_model.dart';
import 'package:illness_lib/views/history_view.dart';
import 'package:illness_lib/views/home_view.dart';
import 'package:illness_lib/views/login_view.dart';
import 'package:illness_lib/views/appointment_view.dart';
import 'package:illness_lib/views/settings_view.dart';
import 'package:illness_lib/views/signup_view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(
    minTextAdapt: true,
    builder: ((context, child) => MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => UserViewModel())],
          child: AdaptiveTheme(
            light: doctorLightTheme,
            dark: doctorDarkTheme,
            initial: AdaptiveThemeMode.system,
            builder: (theme, darkTheme) => MaterialApp(
              title: 'IllnessLib',
              debugShowCheckedModeBanner: false,
              theme: theme,
              darkTheme: darkTheme,
              home: const HomeView(),
              initialRoute: loginRoute,
              routes: {
                loginRoute: (context) => const LoginView(),
                signupRoute: (context) => const SignupView(),
                settingsRoute: (context) => const SettingsView(),
                historyRoute: (context) => const HistoryView(),
                appointmentRoute: (context) => const AppointmentView(),
              },
            ),
          ),
        )),
  ));
}
