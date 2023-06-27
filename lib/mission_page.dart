import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({Key? key}) : super(key: key);

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
              child: OutlinedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, child: const Text('go back'),
              )
          )
      )
    );
  }
}
