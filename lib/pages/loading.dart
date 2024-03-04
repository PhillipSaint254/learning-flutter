import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: "Nairobi", flag: "nairobi.png", url: "Africa/Nairobi");
    await instance.getTime();

    // Check if instance.time is not null before navigating
    if (instance.time != null) {
      Navigator.of(context).pushReplacementNamed("/home", arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
      });
    } else {
      // Handle the case when time is null, for example, by displaying an error message or retrying.
      setupWorldTime();
    }
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
