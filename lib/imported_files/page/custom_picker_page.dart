// import 'package:loginuicolors/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:slot_allot/imported_files/utils.dart';

class CustomPickerPage extends StatefulWidget {
  @override
  _CustomPickerPageState createState() => _CustomPickerPageState();
}

class _CustomPickerPageState extends State<CustomPickerPage> {
  int index = 0;

  static List<String> values = [
    'Football Ground',
    'Cricket Ground',
    'Quadrangle',
    'TPO Hall',
    'Mechanial SH',
    'Civil SH',
    'Auditorium',
    'DL Classroom',
    'AL Classroom'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCustomPicker(),
              const SizedBox(height: 24),
              ButtonWidget(
                onClicked: () => Utils.showSheet(
                  context,
                  child: buildCustomPicker(),
                  onClicked: () {
                    final value = values[index];
                    Utils.showSnackBar(context, 'Selected "$value"');

                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildCustomPicker() => SizedBox(
        height: 300,
        child: CupertinoPicker(
          itemExtent: 64,
          diameterRatio: 0.7,
          looping: true,
          onSelectedItemChanged: (index) => setState(() => this.index = index),
          // selectionOverlay: Container(),
          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
            background: Colors.pink.withOpacity(0.12),
          ),
          children: Utils.modelBuilder<String>(
            values,
            (index, value) {
              final isSelected = this.index == index;
              final color = isSelected ? Colors.pink : Colors.black;

              return Center(
                child: Text(
                  value,
                  style: TextStyle(color: color, fontSize: 24),
                ),
              );
            },
          ),
        ),
      );
}


class ButtonWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(minimumSize: Size(100, 42)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.more_time, size: 28),
        const SizedBox(width: 8),
        Text(
          'Show Picker',
          style: TextStyle(fontSize: 20),
        ),
      ],
    ),
    onPressed: onClicked,
  );
}
