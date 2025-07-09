import 'package:flutter/material.dart';
import 'package:flutterroutes/profile_screen.dart';
import 'package:flutterroutes/projects_screen.dart';
import 'package:flutterroutes/setings_screen.dart';
import 'package:flutterroutes/utlies/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text('Home Screen', style: TextStyle(fontSize: 30)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('This is Home Screen'),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                elevation: 7,
              ),
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, RoutesName.getName);
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Go to Profile  ', style: TextStyle(fontSize: 40)),
                  Icon(Icons.person, size: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                elevation: 7,
              ),
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.projectScreen);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Go to Projects  ', style: TextStyle(fontSize: 38)),
                  Icon(Icons.production_quantity_limits_rounded, size: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                elevation: 7,
              ),
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.settingScreen);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Go to Setting  ', style: TextStyle(fontSize: 40)),
                  Icon(Icons.settings, size: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GetName extends StatefulWidget {
  const GetName({super.key});

  @override
  State<GetName> createState() => _GetNameState();
}

class _GetNameState extends State<GetName> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.name,
            ),
          ),

          ElevatedButton(
            onPressed: () {

              Navigator.pushNamed(context, RoutesName.profileScreen,arguments: {'name': nameController.text.toString()});
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
