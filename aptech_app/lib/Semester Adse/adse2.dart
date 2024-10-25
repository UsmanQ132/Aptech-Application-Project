import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Adse2 extends StatelessWidget {
  const Adse2({super.key});

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
                      '• Gain an understanding of AI'),
                  Text(
                      '• Gain knowledge in NLP and learn the use of AI in NLP'),
                  Text(
                      '• Use important building blocks of AI & ML with Python, make data modelling decisions, interpret output of the algorithms, and validate results'),
                  Text(
                      '• Master ML concepts and techniques including supervised and unsupervised learning mathematical and heuristic aspects, and hands on modeling to develop AI algorithms'),
                  Text(
                      '•  Master deep learning concepts and TensorFlow open-source framework, implement deep learning algorithms, and build ANN (Artificial Neural Networks)'),
                  Text(
                      '• Develop a real-world Capstone project on recommendation engine and perform customer churn prediction'),

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
                  Text('• AI Primer'),
                  Text('• AI Applications of NLP'),
                  Text('• AI and ML Mastery with Python'),
                  Text('• Applied Machine Learning using Python'),
                  Text('• Deep Learning using Neural Networks'),
                  Text('• Capstone Project-Recommendation Engine and Customer Churn Prediction'),
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
                  Text('DATA ANALYST'),
                   SizedBox(height: 2,),
                  Text('AI DEVELOPER'),
                   SizedBox(height: 2,),
                  Text('ML DEVELOPER'),
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
