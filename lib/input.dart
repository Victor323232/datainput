import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class input extends StatefulWidget {
  const input({Key? key}) : super(key: key);

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Input"),
        backgroundColor: Color(0xfff570600) //color oxfff prefix
      ),
       body: Column(
        children: <Widget>[
          Padding(
           padding: EdgeInsets.all(32),
           child: TextField(
            keyboardType:  TextInputType.text,
             decoration: InputDecoration(
               labelText: "seu nome"
             ),
             //enabled: false,
             //maxLength: 10,
                //obscureText: true,
             /*onChanged: (String texto){  //Receive everything written
              print("valor escrito" + texto);
             }*/
              onSubmitted:(String texto){ //Receive everything written after confirmation
                print("valor escrito:" + texto);
              },
              controller: _textEditingController ,//written value confirmation controller written value confirmation controller
         ),
        ),
         ElevatedButton(
            child: Text("Salvar"),
           onPressed: (){
              print("valor escrito" + _textEditingController.text);
           },
          )
      ],
     ),
    );
  }
}
