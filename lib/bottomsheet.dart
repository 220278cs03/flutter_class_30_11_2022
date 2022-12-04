import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    // context: context,
                    // builder: (context) {
                    //   return Container(
                    //     width: double.infinity,
                    //     height: 200,
                    //     color: Colors.green,
                    //     child: Column(
                    //       children: [
                    //         Text('Tanlash'),
                    //         Text('Camera'),
                    //         Text('Tanlsh')
                    //       ],
                    //     ),
                    //   );
                    // });
                    context: context,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        height: 200,
                        color: Colors.green,
                        child: Column(
                          children: [
                            Text('Tanlash'),
                            Text('Camera'),
                            Text('Tanlsh')
                          ],
                        ),
                      );
                    });
              },
              child: Text("Bottom sheet"),
            );
          }
        ),
      ),
    );
  }
}
