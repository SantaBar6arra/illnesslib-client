import 'package:flutter/material.dart';
import 'package:illness_lib/views/side_menu_view.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      drawer: getSideMenu(context),
      body: Column(
        children: const [],
      ),
    );
  }
}
