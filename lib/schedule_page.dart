import 'package:aplikasi/appointment_page.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  final String doctorName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String address;

  SchedulePage({
    required this.doctorName,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Janji Temu'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          elevation: 8,
          shadowColor: Colors.blueAccent.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader('Doctor', doctorName),
                Divider(),
                _buildHeader('Name', '$firstName $lastName'),
                Divider(),
                _buildHeader('Phone', phoneNumber),
                Divider(),
                _buildHeader('Address', address),
                SizedBox(height: 20),
                _buildBookButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ],
    );
  }

  Widget _buildBookButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blueAccent,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppointmentPage(
                doctorName: doctorName,
                firstName: firstName,
                lastName: lastName,
                phoneNumber: phoneNumber,
                address: address, patientName: '', appointmentType: '',
              ),
            ),
          );
        },
        child: Text(
          'Atur Janji Temu',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
