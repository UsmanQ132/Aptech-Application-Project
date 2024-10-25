import 'package:aptech_app/hdseSemester.dart';
import 'package:flutter/material.dart';

class Hdse extends StatelessWidget {
  const Hdse({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,  // Ensures content is spaced
        children: [
             Stack(
              children: [
                    ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.asset(
                    'Hdse.jpg',
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
Expanded( child: 
SingleChildScrollView(
  child: 
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
               const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // This ensures the text fits within the row and screen width
                        child: Text(
                          'HIGHER DIPLOMA IN SOFTWARE ENGINEERING WITH INTERMEDIATE EQUIVALENCY',
                          maxLines: 2, // Allow max 2 lines
                          overflow:
                              TextOverflow.ellipsis, // Truncate if too long
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '2 hrs. / 3 days a week',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Course Duration',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    '40 Hrs',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                const Text(
                    'ACCP is a career program designed to make you an industry-ready professional, and train you in technologies shaping the future.Keeping in mind the latest industry requirements, the course has been designed to take you on the path of Full Stack Development.',
                   maxLines: 6, // Allow max 2 lines
                          overflow:
                          TextOverflow.ellipsis, // Truncate if too long
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                const SizedBox(height: 4.0),
               _buildTextContent(
                  "Aptech’s HDSE program helps students learn full stack development "
                  "in multiple fields including Web Designing, Application development & Mobile App "
                  "development. With HDSE students can excel their career in the following "
                   "development profiles:"),
              _buildTextContent(
                  "1. Full Stack Web Designer / Responsive Web Developer / Front End Developer "),
              _buildTextContent(
                  "2. Full Stack Web Developer (.NET) / Enterprise Web Application Developer/Azure Developer "),
              _buildTextContent(
                  "3. Full Stack Web Developer (Open Source) / Open Source Application Developer "),
              _buildTextContent(
                  "4. Full Stack Developer / Mobile Application Developer / Android Developer / iOS Developer"),
              _buildTextContent(
                  "Now with the Aptech & SBTE Qualification, students can get best of both worlds; "
                  "They can get the latest in I.T. education and at the same time get Intermediate "
                  "equivalency."),
                    const SizedBox(height: 16.0),
                      ],
                ),
              ),
            ),
          ),
          
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity, // Make the button stretch to full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Semester1()),
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

  // Text content formatting
  Widget _buildTextContent(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }
