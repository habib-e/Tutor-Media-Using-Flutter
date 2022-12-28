// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tutor_media/models/tuition.dart';
import 'package:tutor_media/widgets/icon_text.dart';

class TuitionItem extends StatelessWidget {
  final Tuition tuition;
  TuitionItem(this.tuition);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text('Hi'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    tuition.cls,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                tuition.isMark
                    ? Icons.bookmark
                    : Icons.bookmark_outline_outlined,
                color: tuition.isMark
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            tuition.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(
                Icons.location_on_outlined,
                tuition.location,
              ),
              IconText(Icons.access_time_outlined, tuition.time),
            ],
          )
        ],
      ),
    );
  }
}
