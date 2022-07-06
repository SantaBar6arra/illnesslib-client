import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryItemView extends StatelessWidget {
  const HistoryItemView(
      {Key? key,
      required this.name,
      required this.date,
      required this.time,
      required this.sympthoms,
      required this.suggestion})
      : super(key: key);

  final String name;
  final String date;
  final String time;
  final String sympthoms;
  final String suggestion;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Container(
            color: Colors.teal,
            child: Row(
              children: [
                const Icon(
                  Icons.person_outlined,
                  color: Colors.white,
                ),
                Text(name, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.sp),
                        child: AutoSizeText(
                          date,
                          maxLines: 1,
                          maxFontSize: 17,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "Time",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.sp),
                        child: AutoSizeText(
                          time,
                          maxLines: 1,
                          maxFontSize: 17,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Sympthoms entered by user:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText(
                        sympthoms,
                        maxLines: 1,
                        maxFontSize: 17,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                        ),
                      ),
                      Text(
                        "Program's suggestion:",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText(
                        suggestion,
                        maxLines: 1,
                        maxFontSize: 17,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            child: Row(
              children: const [Text("")],
            ),
          ),
        ],
      ),
    );
  }
}
