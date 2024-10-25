import 'package:aptech_app/Semester.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Adse extends StatelessWidget {
  const Adse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Ensures content is spaced
        children: [
             Stack(
              children: [
                    ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                          child: Image.asset(
                            'Adse.png',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            onPressed: () {
                              Navigator.pop(context); // Navigates back
                            },
                          ),
                        ),
                      ],
                    ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 
                    const SizedBox(height: 16.0),
                    const Text(
                      'ADSE - Advance Diploma in Software Engineering',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[600], size: 18),
                        const SizedBox(width: 4),
                        Text(
                          '4.5 (255 Reviews)',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Class Duration',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      '2 hrs. / 3 days a week',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Course Duration',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      '40 Hrs',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Description',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    const ReadMoreText(
                      'Aptech Certified Computer Professional is the best career path for anyone looking to make a career in the I.T. industry. A one of a kind curriculum in Pakistan, designed to turn any willing student into a market-ready I.T. Professional. “The new ACCP AI is a career program for the latest jobsACCP AI is designed to produce developers of the future. Enabling students to develop applications from start to finish on many different platforms. From the very first semester student is primed to take on job roles just as, Full Stack Web Designer & Front End Developer.Develop mobile ready Websites, create enterprise-ready Cloud Applications or solution delivering smart Web Applications; Develop Mobile Applications for both IOS & Android or connect devices, sensors with IOT to create smart ecosystems.',
                      trimLines: 3,
                      colorClickableText: Colors.blueAccent,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: 'Read Less',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ),
          // "More Details" button at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity, // Make the button stretch to full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdseSemester()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  backgroundColor: const Color.fromARGB(255, 255, 193, 7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Semesters',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
