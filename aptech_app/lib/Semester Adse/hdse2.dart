import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hdse2 extends StatelessWidget {
  const Hdse2({super.key});

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
                  'Term-4 HDSE II - (Higher Diploma in Software Engineering II)',
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
                      '• Learn to build enterprise Web applications with Microsoft Azure'),
                  Text(
                      '• Gain expert frontend development skills with ReactJs'),
                  Text(
                      '• Understand MongoDB concepts, features, architecture and data model and learn to work with open-source NoSQL databases'),
                  Text(
                      '• Write server-side applications using Node.Js'),
                  Text(
                      '• Learn to build real world full stack apps'),
                  Text(
                      '• Develop a full stack Web application using MERN'),
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
                  Text('• Developing Microsoft Azure Applications'),
                  Text('• Frontend Web Development with ReactJS'),
                  Text('• Managing Large DataSets with MongoDB'),
                  Text('• Server-side Programming with NodeJS'),
                  Text('• Building Full Stack Applications'),
                  Text('• Programming with JavaScript'),
                  Text('• eProject-Full Stack MERN Applications'),
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
                  Text('WEB APPLICATION DEVELOPER'),
                  SizedBox(height: 2,),
                  Text('FULL STACK MERN DEVELOPER'),
                  SizedBox(width: 10),
                  Icon(Icons.web, size: 40, color: Colors.orange),
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
