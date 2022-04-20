import 'package:flutter/material.dart';

class input extends StatefulWidget {
  const input({Key? key}) : super(key: key);

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Input"),
        backgroundColor: Color(630000)
      ),
       body: Column(
        children: <Widget>[
          Padding(
           padding: EdgeInsets.all(32),
           child: TextField(
            keyboardType:  TextInputType.text,
         ),
        )
      ],
     ),
    );
  }
}
