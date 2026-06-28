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

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({
    super.key,
    required this.day,
    required this.icon,
    required this.description,
    required this.min,
    required this.max,
    required this.wind,
  });
  final String day;
  final IconData icon;
  final String description;
  final String min;
  final String max;
  final String wind;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Details')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 80),
            const SizedBox(height: 16),
            Text(description),
            const SizedBox(height: 24),
            Text('Min: $min - Max: $max'),
            const SizedBox(height: 8),
            Text('Vent: $wind'),
          ],
        ),
      ),
    );
  }
}

class DayCard extends StatelessWidget {
  const DayCard({
    super.key,
    required this.day,
    required this.icon,
    required this.temp,
    required this.description,
    required this.min,
    required this.max,
    required this.wind,
  });
  final String day;
  final IconData icon;
  final String temp;
  final String description;
  final String min;
  final String max;
  final String wind;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => WeatherDetails(
                day: day,
                icon: icon,
                description: description,
                min: min,
                max: max,
                wind: wind,
              ),
            ),
          );
        },
        child: ListTile(
          leading: Icon(icon),
          title: Text(day),
          trailing: Text(temp),
        ),
      ),
    );
  }
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
        children: <Widget>[
          const DayCard(
            day: 'Lundi 29 juin',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
          const DayCard(
            day: 'Mardi 30 juin',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
          const DayCard(
            day: 'Mercredi 1 juillet',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
          const DayCard(
            day: 'Jeudi 2 juillet',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
          const DayCard(
            day: 'Vendredi 3 juillet',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
          const DayCard(
            day: 'Samedi 4 juillet',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
          const DayCard(
            day: 'Dimanche 5 juillet',
            icon: Icons.sunny,
            description: 'Ensoleillé',
            min: '18°C',
            max: '24°C',
            wind: '12 km/h',
            temp: '22.3 °C',
          ),
        ]
      )
    );
  }
}
