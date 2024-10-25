import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class S3 extends StatelessWidget {
  const S3({super.key});

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
                      '• Normalize raw data into well-organized database tables in SQL Server Perform advanced database operations'),
                  Text(
                      '• Develop basic and advanced object-oriented applications using C#'),
                  Text(
                      '• Use TypeScript for creating Angular applications.'),
                  Text(
                      '• Develop Web applications implementing server-side programming using ASP.NET MVC.'),
                  Text(
                      '• Develop a real-world application using .NET technologies'),
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
                  Text('• Data Management with SQL Server'),
                  Text('• Programming in C#'),
                  Text('• Angular Applications with TypeScript'),
                  Text('• Developing ASP.NET CORE MVC Web Applications'),
                  Text('• Optimize Web for Search Engines'),
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
                  Text('Rest API'),
                  Text('CRUD with Angular'),
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
                  Text('Full Stack Web Developer'),
                  Text('ASP .NET Core Developer'),
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
