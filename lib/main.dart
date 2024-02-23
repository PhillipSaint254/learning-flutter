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
      body: Center(
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // )
        // child: TextButton(
        //   onPressed: ()=>{
        //     debugPrint("You clicked me")
        //   },
        //   child: Text("click me"),
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        //   ),
        // ),
        // child: ElevatedButtonTheme(
        //   onPressed: ()=>{
        //     debugPrint("You clicked me")
        //   },
        //   child: Text("click me"),
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        //   ),
        // ),
        // child: OutlinedButtonTheme(
        //   onPressed: ()=>{
        //     debugPrint("You clicked me")
        //   },
        //   child: Text("click me"),
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        //   ),
        // ),

        child: TextButton.icon(
          onPressed: ()=> {
            debugPrint("You clicked me..")
          },
          icon: Icon(
            Icons.mail
          ),
          label: Text("Mail Me!"),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("click"),
        onPressed: ()=> {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
