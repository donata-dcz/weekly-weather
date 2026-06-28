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
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Lundi 29 juin'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Mardi 30 juin'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Mercredi 1 juillet'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Jeudi 2 juillet'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Vendredi 3 juillet'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Samedi 4 juillet'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => const WeatherDetails(
                      day: 'Lundi 29 juin',
                      icon: Icons.sunny,
                      description: 'Ensoleillé',
                      min: '18°C',
                      max: '24°C',
                      wind: '12 km/h',
                    ),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.sunny),
                title: Text('Dimanche 5 juillet'),
                trailing: Text('22.3 °C'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
