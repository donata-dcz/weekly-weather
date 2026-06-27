import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weekly Weather',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WeeklyWeather(title: 'Météo de la semaine'),
    );
  }
}

class WeeklyWeather extends StatefulWidget {
  const WeeklyWeather({super.key, required this.title});
  final String title;
  @override
  State<WeeklyWeather> createState() => _WeeklyWeatherState();
}

class _WeeklyWeatherState extends State<WeeklyWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: const <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.sunny, size: 20),
                    SizedBox(width: 16),
                    Text('Lundi 29 juin'),
                    SizedBox(width: 16),
                    Text('22.3 °C'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
