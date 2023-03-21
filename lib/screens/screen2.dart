import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/providers/text_label_data.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // String textValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            onChanged: (value) {
              context.read<TextLabelData>().changeTextLabel(value);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pop();
        },
        label: Text("POP"),
        icon: Icon(Icons.close),
      ),
    );
  }
}
