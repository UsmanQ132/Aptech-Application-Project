import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S4 extends StatelessWidget {
  const S4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'HDSE I - (Higher Diploma in Software Engineering)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              // Objectives Section
              Text(
                'Objectives',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '• Develop enterprise applications and Web services using .NET technologies using the Microsoft Azure cloud platform.'),
                  Text(
                      '• Implement software development process using Agile methodology'),
                  Text(
                      '• Learn to code Flutter apps using Dart programming language.'),
                  Text(
                      '• Use Flutter framework and Dart programming language to develop cross platform mobile apps'),
                  Text(
                      '• Develop an App using Dart and Flutters'),
                ],
              ),
              // Module Section
              Text(
                'Module',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Developing Microsoft Azure and Web Services'),
                  Text('• Agile and DevOps'),
                  Text('• Introduction to Dart Programming'),
                  Text('• Application Development Using Flutter and Dart'),
                  Text('• Semester eProject'),
                ],
              ),
              SizedBox(height: 20),

              // Workshops Section
              Text(
                'Workshops',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('React Native'),
                ],
              ),
              SizedBox(height: 20),

              // Job Profile Section
              Text(
                'Job Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('.NET Web & Enterprise Application Developer'),
                  Text('Cross Platform App Developer'),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
