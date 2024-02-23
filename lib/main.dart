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
        child: Image(
          // image: NetworkImage('https://media.licdn.com/dms/image/D4D03AQH6Xd1tc4vBeA/profile-displayphoto-shrink_800_800/0/1692807308864?e=2147483647&v=beta&t=uS3VDYO9gDnq4z0uMWl-qqF2K_VjijaRy5bVNwdwSB8')
          image: AssetImage('space-2.jpg'),
        ),
        // child: Image.asset('assets/space-2.jpg')
        // child: Image.network("https://media.licdn.com/dms/image/D4D03AQH6Xd1tc4vBeA/profile-displayphoto-shrink_800_800/0/1692807308864?e=2147483647&v=beta&t=uS3VDYO9gDnq4z0uMWl-qqF2K_VjijaRy5bVNwdwSB8")
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("click"),
        onPressed: ()=> {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
