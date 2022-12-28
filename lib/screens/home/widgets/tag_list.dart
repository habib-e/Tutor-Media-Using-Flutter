// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagsList = <String>['All', 'ICT', 'SSC', 'English', 'Female'];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        height: 40,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        color: selected == index
                            ? Theme.of(context).primaryColor.withOpacity(0.2)
                            : Colors.white,
                        border: Border.all(
                          color: selected == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).primaryColor.withOpacity(0.2),
                        )),
                    child: Text(tagsList[index]),
                  ),
                ),
            separatorBuilder: (_, index) => SizedBox(
                  width: 15,
                ),
            itemCount: tagsList.length));
  }
}
