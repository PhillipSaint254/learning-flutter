import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Nairobi'));
    Map data = jsonDecode(response.body);

// get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3); // Extract offset without the sign
    print(offset);

    DateTime now = DateTime.parse(datetime);
    print('Original time: $now');

// Parse offset and add it to the DateTime object
    int offsetHours = int.parse(offset);
    now = now.add(Duration(hours: offsetHours));
    print('Adjusted time: $now');
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading screen"),
    );
  }
}
