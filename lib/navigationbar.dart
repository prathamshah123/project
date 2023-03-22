import 'package:abc/adduser.dart';
import 'package:abc/employee.dart';
import 'package:abc/vehiclerecords.dart';
import 'package:flutter/material.dart';
import 'package:abc/profile.dart';
import 'package:abc/login.dart';

class NavigatioBar extends StatefulWidget {
  const NavigatioBar({Key? key}) : super(key: key);

  @override
  State<NavigatioBar> createState() => _NavigatioBarState();
}

class _NavigatioBarState extends State<NavigatioBar> {
  int currentIndex = 0;
  final List<Widget> _children = [
    VehicleRecords(),
    EmployeeRecords(),
    ProfilePage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFF981A),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.account_balance_outlined)),
                Tab(icon: Icon(Icons.account_circle)),
              ],
            ),
            title: const Text('M-Towing'),
          ),
          body: const TabBarView(
            children: [
              VehicleRecords(),
              EmployeeRecords(),
              ProfilePage(),
            ],
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: Text('Menu'),
                ),
                ListTile(
                  title: const Text('Add User'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => adduser(),
                        ));
                  },
                ),
                ListTile(
                  title: const Text('Logout'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //Navigator.pop(context);
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => login(),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
