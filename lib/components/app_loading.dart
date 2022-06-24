import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // TODO: paste animation into the center of the screen
      children: const [
        SpinKitPumpingHeart(
          color: Colors.red,
          size: 55.0,
        ),
      ],
    );
  }
}
