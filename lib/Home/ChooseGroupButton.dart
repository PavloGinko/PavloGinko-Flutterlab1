import 'package:flutter/material.dart';
import '../Schedule/GroupSchedulePage.dart';

class ChooseGroupButton extends StatefulWidget {
  const ChooseGroupButton({super.key});

  @override
  State<ChooseGroupButton> createState() => _ChooseGroupButtonState();
}

const List<String> groups = <String>['KB-41', 'KB-42', 'KB-43', 'KB-44'];

class _ChooseGroupButtonState extends State<ChooseGroupButton> {
  String dropdownValue = groups.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      borderRadius: const BorderRadius.all(Radius.circular(18)),
      style: const TextStyle(color: Colors.pink),
      underline: Container(
        height: 2,
        color: Colors.pink,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GroupSchedulePage(group: value!)),
        );
      },
      items: groups.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
