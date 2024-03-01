import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();

}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    // simulating a network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "Yoshi";
    });

    // simulate network request to get bio for username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "vegan, musician and shell collector";
    });

    print("$username - '$bio'");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print("smh");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose a Location"),
        backgroundColor: Colors.blue[900],
        elevation: 0,
        centerTitle: true,
      ),
      body: Text("Choose location screen"),
    );
  }
}
