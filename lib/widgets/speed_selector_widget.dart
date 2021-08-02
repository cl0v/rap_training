import 'package:flutter/material.dart';

class SpeedSelector extends StatefulWidget {
  const SpeedSelector({Key? key}) : super(key: key);

  @override
  _SpeedSelectorState createState() => _SpeedSelectorState();
}

class _SpeedSelectorState extends State<SpeedSelector> {
  List<bool> selectedList = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        onPressed: (idx) {
          setState(() {
            selectedList[idx] = !selectedList[idx];
          });
        },
        isSelected: selectedList,
        children: [1, 2, 3, 4]
            .map(
              (e) => Text(
                e.toString(),
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
