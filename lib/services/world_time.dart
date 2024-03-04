import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //name for the UI
  String time = ''; // the time in the location
  String flag; // url to the flag icon
  String url; // location url for api endpoint

  WorldTime({ required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(
          Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);

  // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3); // Extract offset without the sign

      DateTime now = DateTime.parse(datetime);

      int offsetHours = int.parse(offset);
      now = now.add(Duration(hours: offsetHours));

      //set the time property
      time = DateFormat.jm().format(now);
    }
    catch (e) {
      print("caught error: $e");
      time = "could not fetch the correct time";
    }
  }
}

