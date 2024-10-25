import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

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
                  padding: const EdgeInsets.only(top: 35,bottom: 12),
                  color: const Color.fromARGB(255, 255, 193, 7),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'About Aptech',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section with image and description
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'pakistan.png', // Replace with your image asset
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Aptech Pakistan is a premier institute for technical education, dedicated to providing students with the knowledge and skills they need to succeed in the ever-evolving world of technology...',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 16.0),

              // Mission Section
              const Text(
                'Mission',
              ),
              const SizedBox(height: 8.0),
              Text(
                'Our mission is to empower PAKISTAN through technology. I.T. when rightly employed leads to productivity improvements and prosperity at individual, organizational, societal, National, and Global level...',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 16.0),

              // CEO Section with image
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'siriqbal.jpg', // Replace with your image asset
                      height: 100,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'IQBAL YOUSUF SHAIKH\nChief Executive Officer - Aptech Learning Pakistan',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),

              // Achievements Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildAchievementCard('05', 'Continents'),
                  _buildAchievementCard('40', 'Countries'),
                  _buildAchievementCard('2500', 'Centers'),
                ],
              ),
              const SizedBox(height: 24.0),

              // Awards Section
              const Text(
                'Aptech Pakistan Won 🏆 Awards',
              ),
              const SizedBox(height: 8.0),
              _buildAwardItem('2018', 'Brands of the Year'),
              _buildAwardItem('2017', 'International Star for Leadership in Quality'),
              _buildAwardItem('2016', 'Who\'s Who Award'),
              _buildAwardItem('2014', 'Brand Scientist Award'),
              _buildAwardItem('2013', 'Best Achievement at APTECH World Leadership Summit, Thailand'),
            ],
          ),
        ),
        ],
      ),
    );
  }

  // Widget to build achievement card
  Widget _buildAchievementCard(String number, String title) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
        ),
      ],
    );
  }

  // Widget to build each award item
  Widget _buildAwardItem(String year, String awardText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '🏆 $year: ',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              awardText,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
