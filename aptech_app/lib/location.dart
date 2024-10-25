import 'package:flutter/material.dart';


class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ListView(
        children: [
        Stack(
            children: [
              ClipRRect(
                borderRadius:
             const BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.only(top: 35,bottom: 12),
                  color: const Color.fromARGB(255, 255, 193, 7),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Locations',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
         Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildCitySection('Karachi', [
                _buildContact('Clifton', '(21) 35641162, (21) 35644340'),
                _buildContact('Defence', '(21) 35396860, (21) 35396681'),
                _buildContact('Federal B.Area', '(21) 36344258, (21) 36344253'),
                _buildContact('Garden', '(21) 32237040, (21) 32237042'),
                _buildContact(
                    'Gulistan-e-Johar', '(21) 34662254, (21) 34662255'),
                _buildContact('Gulshan e Iqbal', '21-34980576, 21-34980577'),
                _buildContact('Metro Star Gate', '21-34580415, (21) 34580425'),
                // Add more contacts similarly...
              ]),
              const SizedBox(height: 20),
              _buildCitySection('Lahore', [
                _buildContact('Johar Town', '(42) 35172415, (42) 35172416'),
                // Add more contacts for Lahore...
              ]),
              const SizedBox(height: 20),
              _buildCitySection('Hyderabad', [
                _buildContact('Latifabad', '(22) 3407718, (22) 3407719'),
                // Add more contacts for Hyderabad...
              ]),
              // Add more cities and their contacts similarly...
            ],
          ),
        ),
        ],
      ),
    );
  }

  Widget _buildCitySection(String cityName, List<Widget> contacts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.amber,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            cityName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Column(
          children: contacts,
        ),
      ],
    );
  }

  Widget _buildContact(String location, String contactInfo) {
    return ListTile(
      leading: const Icon(Icons.phone),
      title: Text(location),
      subtitle: Text(contactInfo),
    );
  }
}
