import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.only(top: 35, bottom: 12),
                  color: const Color.fromARGB(255, 255, 193, 7),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Support',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 5,
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

          // "Why Invest with APTECH" section
       const   Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Why Invest with APTECH',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Franchise Model gives individuals the opportunity to go into business for themselves...',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          // "Support to Franchise" section
        const  Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Support to Franchise',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'How we support our Franchise?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  '- Site selection\n- Center layout planning\n- Recruitment (of staff, faculty, etc.)',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          // "Course Design & Delivery Support" section
        const  Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Course Design & Delivery Support',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'APTECH has three decades of experience developing course material...',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          // "Marketing Support" section
       const   Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Marketing Support',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '- Advertising campaigns\n- Performance reviews and training\n- Student scholarships',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          // Contact Information Section
       const   Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'APTECH SINDH REGION',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Aptech Learning Pakistan\n'
                  'Progressive Center, Suite#101, 1st Floor, Progressive Center, Block#6, P.E.C.H.S, Main Shahrah-e-Faisal.\n'
                  'Karachi, Karachi City, Sindh 75400, Pakistan\n'
                  '(+92) 21-111 278 324\n'
                  'info@aptech-education.com.pk',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),

                const Text(
                  'APTECH PUNJAB REGION',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Aptech Learning Pakistan\n'
                  '29-C, Noon Avenue, Old Muslim Town Main Canal Road Lahore\n'
                  'Lahore, Lahore City, Pakistan\n'
                  '+92 (42)-35467813 | +92 (42)-35440967\n'
                  'info@aptech-education.com.pk',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
