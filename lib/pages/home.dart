import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    // Provide a default value for data if arguments is null
    data = ModalRoute.of(context)?.settings.arguments as Map ?? {};

    print(data);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseLocation())
                  );
                  // Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit location"),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 56.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
      MaterialApp(
        home: Home(),
      )
  );
}
