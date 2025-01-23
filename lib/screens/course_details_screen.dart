import 'package:flutter/material.dart';
import 'profile_page.dart'; // Correct import path for profile page

class CourseDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> course; // Assuming Course is represented by a Map

  CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          course['name'],
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 40, 236, 227), // Theme green color
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFE8F5E9), // Light green background
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Course Title
            Text(
              course['name'],
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5CD65C),
              ),
            ),
            SizedBox(height: 16.0),

            // Description Section
            Text(
              course['description'],
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 20.0),

            // Details Section
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5.0,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.grey[700]),
                        SizedBox(width: 10.0),
                        Text(
                          'Instructor: ${course['instructor']}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey[700]),
                        SizedBox(width: 10.0),
                        Text(
                          'Duration: ${course['duration']}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.grey[700]),
                        SizedBox(width: 10.0),
                        Text(
                          'Price: ${course['price']}',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Enroll Now Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Logic to enroll in the course
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You have enrolled in ${course['name']}!'),
                      backgroundColor: Color(0xFF5CD65C),
                    ),
                  );
                },
                icon: Icon(Icons.check_circle, color: Colors.white),
                label: Text(
                  'Enroll Now',
                  style: TextStyle(fontSize: 18.0),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5CD65C), // Green theme color
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
