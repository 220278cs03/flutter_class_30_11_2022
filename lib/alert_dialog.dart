import 'package:flutter/material.dart';

class ALertDialogim extends StatelessWidget {
  const ALertDialogim({Key? key}) : super(key: key);

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
                  return AlertDialog(
                    title: Text("Tanlang"),
                    content: Text("Avatar rasmini o'zgartirish"),
                    actions: [
                      ElevatedButton(onPressed: (){}, child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.camera_alt),
                          Text('Camera')
                        ],
                      )),
                      ElevatedButton(onPressed: (){}, child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.photo),
                          Text('Gallery')
                        ],
                      ))
                    ],
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
