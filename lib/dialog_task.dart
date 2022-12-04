import 'package:flutter/material.dart';

class Dialog_task extends StatelessWidget {
  const Dialog_task({Key? key}) : super(key: key);

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
                      width: 335,
                      height: 288,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 59),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('Icons.png'),
                                Text('Warning!', style: TextStyle(color: Color(0xff334D8F), fontSize: 20, fontWeight: FontWeight.w600),),
                                Text('This transaction cannot be reversed. Are you sure you want to delete the template?', style: TextStyle(color: Color(0xff474A56), fontSize: 14, fontWeight: FontWeight.w400),textAlign: TextAlign.center),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(6)),
                                      color: Color(0xff334D8F)
                                    ),
                                    child: Center(child: Text("Yes, I am sure", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),),),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                              child: IconButton(onPressed: (){
                                Navigator.pop(context);
                              }, icon: Icon(Icons.close, color:Color(0xffC8D1E1))))
                        ],
                      ),
                    ),
                  );
                }
            );
          },
          child: Text("Task"),
        ),
      ),
    );
  }
}
