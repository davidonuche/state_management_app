import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {

  final Function(String) onTextLabelChanged;
  const Screen2({required this.onTextLabelChanged, super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            onChanged: widget.onTextLabelChanged,
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
