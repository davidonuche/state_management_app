import 'package:flutter/material.dart';
import 'package:state_management_app/screens/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textLabel = "";
  void onLabelChange(String value) {
    setState(() {
      textLabel = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textLabel),
      ),
      body: Center(
        child: Text(
          textLabel,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Screen2(
                onTextLabelChanged: onLabelChange,
              ),
            ),
          );
        },
        label: Text("To Screen 2"),
        icon: Icon(Icons.forward),
      ),
    );
  }
}
