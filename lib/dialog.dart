import 'package:flutter/material.dart';

class Dialogim extends StatelessWidget {
  const Dialogim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(
              context: context,
              builder: (context){
                return Dialog(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ),
                );
              }
            );
          },
          child: Text("Dialog"),
        ),
      ),
    );
  }
}
