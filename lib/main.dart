import'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      title: 'FABE' ,
      debugShowCheckedModeBanner: false,
      home: FloatingAction(),
    )
  );
}
class FloatingAction extends StatefulWidget {
  @override
  _FloatingActionState createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Floating Action Button Example'),
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Floating Action Button Pressed this many times'),
                Text('$i', textScaleFactor: 3,)
              ],
            ),
          ),

          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.plus_one_outlined,
              size: 30.0,
              ),
            backgroundColor:Colors.pink,
            onPressed: () {
              setState(() {
                i ++;
              }
              );
            }
          )


      );

  }
}
