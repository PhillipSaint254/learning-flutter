import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceCenter,
        // mainAxisAlignment: MainAxisAlignment.spaceEnd,
        // mainAxisAlignment: MainAxisAlignment.spaceStart,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hell No World"),
          TextButton(
              onPressed: (){},
              child: Text("Click Me")
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text("Inside container"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("click"),
        onPressed: ()=> {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
