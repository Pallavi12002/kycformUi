import 'package:flutter/material.dart';

class KycForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7463F0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text('Complete Your KYC', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(labelText: 'Pan Card'),
              const SizedBox(height: 16),
              CustomTextField(labelText: 'Account Number'),
              const SizedBox(height: 16),
              CustomTextField(labelText: 'IFSC Code'),
              const SizedBox(height: 16),
              CustomTextField(labelText: 'Bank Name'),
              const SizedBox(height: 16),
              CustomTextField(labelText: 'Branch Name'),
              const SizedBox(height: 16),
              CustomTextField(labelText: 'State'),
              const SizedBox(height: 16),
              FileUploadField(labelText: 'Bank Proof'),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7463F0), // Button background color
                    foregroundColor: Colors.white, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                  child: const Text('Verify Account'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;

  CustomTextField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        labelText: labelText,
      ),
    );
  }
}

class FileUploadField extends StatelessWidget {
  final String labelText;

  FileUploadField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.attach_file, color: Colors.grey),
        SizedBox(width: 8),
        Text(labelText, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
