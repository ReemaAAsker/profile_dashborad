// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:profile_dashboard/helpers/constants.dart';

class ServiceWidget extends StatelessWidget {
  Image icon;
  String title;
  String description;

  ServiceWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(231, 158, 158, 158),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: ListTile(
        onTap: () => showMessgae(context, "Go ahead "),
        leading: icon,
        trailing: Icon(Icons.arrow_forward, size: 30, color: Colors.black),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
