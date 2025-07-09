import 'package:flutter/material.dart';

class SetingsScreen extends StatefulWidget {
  const SetingsScreen({super.key});

  @override
  State<SetingsScreen> createState() => _SetingsScreenState();
}

class _SetingsScreenState extends State<SetingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text('Settings Screen', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
