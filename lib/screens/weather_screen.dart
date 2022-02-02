import 'package:flutter/material.dart';
import 'package:helloflutter/shared/menu_bottom.dart';
import 'package:helloflutter/shared/menu_drawer.dart';
import '../data/http_helper.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather')),
      bottomNavigationBar: MenuBottom(),
      drawer: MenuDrawer(),
      body: Column(
        children: [
          ElevatedButton(onPressed: getData, child: Text('Get Data')),
          Text(result)
        ],
      ),
    );
  }

  Future getData() async {
    HttpHelper httpHelper = HttpHelper();
    result = await httpHelper.getWeather('Mersin');

    setState(() => {});
  }
}
