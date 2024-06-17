import 'package:flutter/material.dart';
import 'doctor_detail_page.dart';

class DoctorsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Dokter'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DoctorCard(
                name: 'DR. Ayu',
                imageUrl: 'assets/ayu.jpg',
                email: 'Contact@medlife.com',
                address: '3035A',
                description: 'At MedLife, we create integrated medical services with the professionality...',
              ),
              DoctorCard(
                name: 'DR. Satria',
                imageUrl: 'assets/satria.jpg',
                email: 'Contact@medlife.com',
                address: '3035A',
                description: 'At MedLife, we create integrated medical services with the professionality...',
              ),
              DoctorCard(
                name: 'DR. Eko',
                imageUrl: 'assets/eko.jpg',
                email: 'Contact@medlife.com',
                address: '3035A',
                description: 'At MedLife, we create integrated medical services with the professionality...',
              ),
              DoctorCard(
                name: 'DR. Wahyu',
                imageUrl: 'assets/wahyu.jpg',
                email: 'Contact@medlife.com',
                address: '3035A',
                description: 'At MedLife, we create integrated medical services with the professionality...',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String email;
  final String address;
  final String description;

  DoctorCard({
    required this.name,
    required this.imageUrl,
    required this.email,
    required this.address,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Address: $address'),
                      SizedBox(height: 5),
                      Text('Email: $email'),
                      SizedBox(height: 5),
                      Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorDetailPage(
                      name: name,
                      imageUrl: imageUrl,
                      address: address,
                      description: description,
                    ),
                  ),
                );
              },
              child: Text('More'),
            ),
          ],
        ),
      ),
    );
  }
}
