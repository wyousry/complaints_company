// ignore_for_file: use_key_in_widget_constructors
import 'package:complaints_company/screens/complaints_part2.dart';
import 'package:complaints_company/widget/appbar.dart';
import 'package:complaints_company/widget/complaint_card.dart';
import 'package:flutter/material.dart';

class ComplaintsPage extends StatelessWidget {
  final List<Map<String, dynamic>> complaints = [
    {
      'from': 'Muhammed Abdullah',
      'subject': 'Complaint',
      'date': '6/10/2024',
      'isUnread': true,
    },
    {
      'from': 'Youssef Ekrami',
      'subject': 'Complaint',
      'date': '6/10/2024',
      'isUnread': true,
    },
    {
      'from': 'Ahmed Abdelwab',
      'subject': 'Suggestion',
      'date': '6/10/2024',
      'isUnread': false,
    },
    {
      'from': 'Youssef ',
      'subject': 'Suggestion',
      'date': '6/10/2024',
      'isUnread': false,
    },
    {
      'from': 'Aalaa Abdullah',
      'subject': 'Suggestion',
      'date': '6/10/2024',
      'isUnread': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Complaints & Suggestions',
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: complaints.length,
          itemBuilder: (context, index) {
            return ComplaintCard(
              from: complaints[index]['from'],
              subject: complaints[index]['subject'],
              date: complaints[index]['date'],
              isUnread: complaints[index]['isUnread'],
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComplaintsPart2()));
              },
            );
          },
        ),
      ),
    );
  }
}
