import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hdse1 extends StatelessWidget {
  const Hdse1({super.key});

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
                  'Term-3 HDSE I - (Higher Diploma in Software Engineering)',
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
                      '• Normalize raw data into well organized database tables in SQL Server'),
                  Text(
                      '• Develop basic and advanced object-oriented applications using C#'),
                  Text(
                      '• Leverage the functionality of TypeScript to build Web applications'),
                  Text(
                      '• Take your project to the next level with Material UI'),
                  Text(
                      '• Develop advanced ASP NET MVC applications using NET Framework tools and technologies'),
                  Text(
                      '• Develop a real-world Web application using latest .NET technologies'),
                 
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
                  Text('• Effective Data Solutions with SQL Server'),
                  Text('• Proficient Programming with C#'),
                  Text('• Building Applications with TypeScript'),
                  Text('• Material UI'),
                  Text('• Building Robust Web Applications with ASP.NET CORE MVC'),
                  Text('• eProject-.NET Web Application Development'),
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
                  Text('• FULL STACK WEB DEVELOPER'),
                  SizedBox(height: 2,),
                  Text('• ASP .NET CORE DEVELOPER'),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 20),

              // Icons for technologies
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Column(
              //       children: [
                
              //         Text('HTML5'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons., size: 50),
              //         Text('JSON'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons.javascript, size: 50),
              //         Text('Mysql'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons.web_asset, size: 50),
              //         Text('PHP'),
              //       ],
              //     ),
              //     Column(
              //       children: [
              //         Icon(Icons.search, size: 50),
              //         Text('Laravel'),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
