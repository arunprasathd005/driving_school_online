import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.blueGrey[50], // Light background color
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header Section
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_picture.png'), // Add a placeholder image in assets
                    backgroundColor: Colors.indigo[100],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Arun Prasath',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            // Personal Information Section
            Text(
              'Personal Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.indigo),
                    title: Text('Name'),
                    subtitle: Text('Arun Prasath'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.indigo),
                    title: Text('Email'),
                    subtitle: Text('arun@example.com'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.indigo),
                    title: Text('Phone'),
                    subtitle: Text('+1234567890'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.calendar_today, color: Colors.indigo),
                    title: Text('Date of Birth'),
                    subtitle: Text('01/01/1990'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            // Driving License Information Section
            Text(
              'Driving License Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.card_membership, color: Colors.indigo),
                    title: Text('License Number'),
                    subtitle: Text('DL12345678'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.date_range, color: Colors.indigo),
                    title: Text('Expiration Date'),
                    subtitle: Text('12/31/2024'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            // Edit Profile Button
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigate to the profile edit page
                },
                icon: Icon(Icons.edit, color: Colors.white),
                label: Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
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
