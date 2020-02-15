import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const List<String> colors = const <String>[
  'Red',
  'Yellow',
  'Amber',
  'Blue',
  'Black',
  'Pink',
  'Purple',
  'White',
  'Grey',
  'Green',
];

class PickerWidget extends StatefulWidget {
  @override
  _PickerWidgetState createState() => _PickerWidgetState();
}

class _PickerWidgetState extends State<PickerWidget> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.red,
      child: CupertinoPicker(
        backgroundColor: Colors.green,
        itemExtent: 32.0,
        onSelectedItemChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
          children: new List<Widget>.generate(
              colors.length, (int index) {
            return new Center(
              child: new Text(colors[index]),
            );
          })
      ),
    );

  }

}