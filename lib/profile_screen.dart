import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  dynamic data;
  ProfileScreen({super.key,required this.data});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text('Profile', style: TextStyle(fontSize: 30)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Welcome '+ widget.data!['name'])),
        ],
      ),
    );
  }
}
