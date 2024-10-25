import 'dart:convert';

import 'package:aptech_app/SPDetails.dart';
import 'package:flutter/material.dart';

// Course Data Class
class SmartPrfessional {
  final String Simages;
  final String Stitle;
  final String Sdescription;

  SmartPrfessional({
    required this.Simages,
    required this.Stitle,
    required this.Sdescription,
  });

  factory SmartPrfessional.fromJson(Map<String, dynamic> json) {
    return SmartPrfessional(
      Simages: json['Simages'],
      Stitle: json['Stitle'],
      Sdescription: json['Sdescription'],
    );
  }
}

class SmartCourse extends StatefulWidget {
  const SmartCourse({super.key});

  @override
  State<SmartCourse> createState() => _SmartCourseState();
}

class _SmartCourseState extends State<SmartCourse> {
  // Call List of Course Data
  List<SmartPrfessional> Coursedatas = [];

  // Course Data Indexes
  final String Courseindex = '''
  [
    {
      "Simages": "assets/PHP-Laravel-MySql.jpg",
      "Stitle": "PHP Laravel MySql",
      "Sdescription":"PHP Laravel MySQL course is a comprehensive training program designed to equip learners with the skills and knowledge needed to develop robust web applications. Through hands-on exercises and real-world projects, participants will master the Laravel framework, PHP programming, and MySQL database management, enabling them to build dynamic and scalable websites efficiently."
    },
    {
      "Simages": "assets/dotNet-Core-MSSql-Server-C.jpg",
      "Stitle": ".Net Core MSSql Server C#",
      "Sdescription":".NET Core MSSQL Server C# course is a comprehensive program designed to equip learners with the skills and knowledge needed to develop robust applications using Microsoft's .NET Core framework, coupled with the power of MSSQL Server. Participants will gain hands experience in C# programming, database management, and building scalable solutions."
    },
    {
      "Simages": "assets/Mean-Stack-Developer.jpg",
      "Stitle": "Mean Stack Developer",
      "Sdescription":"Mean Stack Developer course is a comprehensive program designed to equip aspiring developers with the skills and knowledge needed to build dynamic web applications. Participants will learn the fundamentals of MongoDB, Express.js, Angular, and Node.js, gaining hands-on experience in full-stack development and creating robust, scalable, and efficient applications."
    },
        {
      "Simages": "assets/Mern-Stack-Developer.jpg",
      "Stitle": "Mern Stack Developer",
      "Sdescription":"MERN Stack Developer course is a comprehensive program designed to equip aspiring developers with the skills and knowledge needed to build full-stack web applications using the MERN (MongoDB, Express.js, React.js, Node.js) technology stack. From front-end development with React to back-end server setup with Node.js, this course covers it all."
    },
        {
      "Simages": "assets/Android-Application-Development.jpg",
      "Stitle": "Android Application Development",
      "Sdescription":"Android Application Development course is a comprehensive program designed to equip aspiring developers with the skills and knowledge needed to create high-quality Android applications. Through hands-on projects, participants will learn essential concepts such as UI design, data storage, networking, and app deployment, ensuring they are well-prepared for a successful career in Android development."
    },
        {
      "Simages": "assets/Cross-Platform-Development.jpg",
      "Stitle": "Cross Platform Development",
      "Sdescription":"Cross Platform Development course is designed to equip students with the skills and knowledge needed to develop applications that can run seamlessly on multiple platforms, such as iOS, Android, and web. Through hands-on projects and practical exercises, students will learn to leverage frameworks like React Native and Flutter to create efficient and user-friendly cross-platform apps."
    },
        {
      "Simages": "assets/Web-App-Development-Python.jpg",
      "Stitle": "Web App Development Python",
      "Sdescription":"Web App Development Python course is a comprehensive program designed to equip learners with the skills and knowledge needed to build dynamic and interactive web applications using Python. From front-end development with HTML, CSS, and JavaScript to back-end programming with Django and Flask frameworks, this course covers all aspects of web app development."
    },
        {
      "Simages": "assets/social.jpg",
      "Stitle": "Digital Marketing & SEO",
      "Sdescription":"Digital Marketing & SEO course is a comprehensive program designed to equip students with the knowledge and skills needed to excel in the dynamic world of online marketing. From understanding search engine optimization (SEO) techniques to mastering social media marketing strategies, this course offers practical insights and hands-on experience to drive digital success."
    }
  ]''';

  @override
  // initState() is like the setup or starting point for a Flutter widget.
  // When a widget is created (first shown on the screen), initState() is called onc
  void initState() {
    //  super is a way to call a method from the parent or base class in object-oriented programming.
    super.initState();
    // This function is responsible for loading and processing a list of courses.
    _loadCourseList(); // Parse and load course list when widget initializes
  }

  // Function to parse JSON and convert to list of Coursedata objects
  void _loadCourseList() {
    List<dynamic> data = json.decode(Courseindex); // Decode JSON string to dynamic list
    
    setState(() {
      Coursedatas = data.map((json) => SmartPrfessional.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 193, 7),
        elevation: 0,
        title: const Text('Smart Professional',
        style: TextStyle(
          color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () {
            Navigator.of(context).pop(); // Go back to the previous screen
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
          const SizedBox(height: 10),

          Expanded( // Wrapping the GridView in Expanded
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              padding: const EdgeInsets.all(10),
              children: List.generate(Coursedatas.length, (index) {
                return Column(
                  children: [
                    SkillCard(
                      imagePath: Coursedatas[index].Simages,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Spdetails(courseData: Coursedatas[index]),
                          ),
                        );
                      },
                    ),
                    Text(Coursedatas[index].Stitle ,
                    maxLines: 2, // Allow max 2 lines
                    overflow: TextOverflow.ellipsis, // Show "..." when text is too long
                    style: const TextStyle(fontSize: 14), // You can adjust the font size if needed
                    textAlign: TextAlign.center, // Center align the text), // Display the course title
                    ),
                  ],
                );
              }),
            ),
          ),

        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const SkillCard({super.key, 
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 20,
        margin: const EdgeInsets.all(1),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

    );
  }
}
