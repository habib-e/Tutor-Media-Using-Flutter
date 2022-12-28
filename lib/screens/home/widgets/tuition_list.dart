// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tutor_media/models/tuition.dart';
import 'package:tutor_media/screens/home/widgets/tuition_detail.dart';
import 'package:tutor_media/screens/home/widgets/tuition_item.dart';

class TuitionList extends StatelessWidget {
  final tuitionList = Tuition.generateTuition();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => TuitionDetail(tuitionList[index]));
              },
              child: TuitionItem(tuitionList[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: tuitionList.length),
    );
  }
}
