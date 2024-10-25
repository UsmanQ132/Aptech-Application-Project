import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Adse1 extends StatelessWidget {
  const Adse1({super.key});

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
                  'Term-5 ADSE I - (Advance Diploma in Software Engineering)',
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
                      '• Implement software development process using Agile & DevOps methodologies'),
                  Text(
                      '• Develop web and mobile apps as well as server and desktop applications using Dart programming language'),
                  Text(
                      '• Build cross platform apps using Flutter Framework and Dart language'),
                  Text(
                      '• Develop applications using Python language'),
                  Text(
                      '• Gain an introduction to Anaconda, Jupyter Notebook, and Google Collab for data science coding and data visualization'),
                  Text(
                      '• Develop a Cross Platform App using Dart and Flutter'),
                ],
              ),
              SizedBox(height: 20),

              // Module Section
              Text(
                'Module',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Agile and DevOps'),
                  Text('• Dart Programming'),
                  Text('• Cross-Platform App Development with Flutter and Dart'),
                  Text('• Application Based Programming in Python'),
                  Text('• Data Science with Python'),
                  Text('• eProject-Cross Platform App Development'),
                ],
              ),
              SizedBox(height: 20),

              // Job Profile Section
              Text(
                'Job Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('CROSS-PLATFORM APP DEVELOPER'),
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
