import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'customTextField.dart'; // For encoding data

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  // Method to send data to the backend
  Future<void> _sendData() async {
    print("hersse");
    final url = Uri.parse("https://anurag-portfolio-ey8k.onrender.com/portfolio/submit");
    final body = {
      "name": _nameController.text,
      "email": _emailController.text,
      "message": _messageController.text,
    };

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: json.encode(body),
      );


      print(response.body);
      print(response.statusCode);
      print(_nameController.text);
      print(_emailController.text,);
      print(_messageController.text,);


      if (response.statusCode == 201) {
        print("success");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Message sent successfully!")),
        );
        _messageController.clear();
        _emailController.clear();
        _nameController.clear();
      } else {
        print("fail");
        // Handle error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to send message. Please try again.")),
        );
      }
    } catch (error) {

      print("catch me aa rha hai");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An error occurred: $error")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.black54,
      child: Column(
        children: [
          // Title
          Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.blueAccent.shade100,
            ),
          ),
          const SizedBox(height: 50),

          // Name and Email Fields
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 120),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 600) {
                  return Row(
                    children: [
                      Flexible(
                        child: Customtextfield(
                          controller: _nameController,
                          hintText: "Your Name",
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        child: Customtextfield(
                          controller: _emailController,
                          hintText: "Your Email",
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Customtextfield(
                        controller: _nameController,
                        hintText: "Your Name",
                      ),
                      const SizedBox(height: 15),
                      Customtextfield(
                        controller: _emailController,
                        hintText: "Your Email",
                      ),
                    ],
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 15),

          // Message Field
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Customtextfield(
              controller: _messageController,
              hintText: "Your Message",

            ),
          ),
          const SizedBox(height: 20),

          // Send Button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: _sendData,
                child: const Text(
                  "Get in touch",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
