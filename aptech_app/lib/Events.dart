import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Top header section with Events & News label
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
                      'Events & News',
                      style: TextStyle(
                        color: Colors.white,
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
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back
                  },
                ),
              ),
            ],
          ),

          // List of event cards
        const  Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                const EventCard(
                  title: "Aptech Convocation",
                  description:
                      "Aptech provides its students with a grand convocation after completion of their studies, acknowledging their hard work.",
                  date: "OCT 05 2019",
                  time: "11:00 am - 4:00 pm",
                  imageUrl: "assets/convocation.png", // Example URL
                ),
                const EventCard(
                  title: "Aptech Vision - Biggest Software Exhibition",
                  description:
                      "A showcase for software talents, this event promotes employable skills among students and highlights the role of Aptech in the IT industry.",
                  date: "DEC 09 2019",
                  time: "10:00 am - 4:00 pm",
                  imageUrl: "assets/vision.png", // Example URL
                ),
                const EventCard(
                  title: "Aptech Premier League",
                  description:
                      "Cricket is a favorite pastime, and Aptech organizes the annual APL where students and staff participate in a fun-filled tournament.",
                  date: "MAR 18 2019",
                  time: "10:00 am - 4:00 pm",
                  imageUrl: "assets/PremierLeague.png", // Example URL
                ),
                const EventCard(
                  title: "Aptech Career Services",
                  description:
                      "Aptech provides career services to assist students with job hunting, interviews, and career navigation strategies.",
                  date: "--",
                  time: "--",
                  imageUrl: "assets/career.png", // Example URL
                ),
                const EventCard(
                  title: "Social Networking Day",
                  description:
                      "A yearly event celebrated globally at Aptech, allowing students to network and celebrate their achievements together.",
                  date: "NOV 30 2019",
                  time: "10:00 am - 4:00 pm",
                  imageUrl: "https://via.placeholder.com/150", // Example URL
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String time;
  final String imageUrl;

  const EventCard({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(196, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display the event image at the top
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.date_range,
                            size: 16, color: Colors.grey),
                        const SizedBox(width: 5),
                        Text(date),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 16, color: Colors.grey),
                        const SizedBox(width: 5),
                        Text(time),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
