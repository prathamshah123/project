import 'package:abc/employee.dart';
import 'package:abc/vehiclerecords.dart';
import 'package:flutter/material.dart';
import 'package:abc/profile.dart';


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

  void onTappedBar(int index)
  {
    setState(() {
      currentIndex = index;

    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('M-Towing'),
              backgroundColor: Color(0xFFFF981A),
              actions: [
                Theme(
                  data: Theme.of(context).copyWith(dividerColor: Colors.red),
                  child: PopupMenuButton<int>(itemBuilder: (context)=>[
                    PopupMenuItem<int>(
                        value: 0,
                        child: Row(
                          children: [Icon(Icons.add_box_outlined,color: Colors.lightBlueAccent,),
                            const SizedBox(width: 7,),
                            Text("Add User"),],
                        )
                    ),
                    PopupMenuDivider(),
                    PopupMenuItem<int>(
                        value: 1,
                        child: Row(
                          children: [Icon(Icons.logout,color: Colors.red,),
                            const SizedBox(width: 7,),
                            Text("Logout"),
                            // onTappedBar(
                            //     Navigator.push(context, MaterialPageRoute(builder: (context) => const login(),)),
                            // ),
                          ],
                        )
                    )
                  ],),
                ),
              ],
            ),

            bottomNavigationBar: BottomNavigationBar(
              onTap: onTappedBar,
              fixedColor: Colors.black,
              iconSize: 30,
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt),
                  // icon: ImageIcon(AssetImage('assets/car(1).jpg'),
                  // ),
                 label: "Vehicles",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance),
                  label: "Employee",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                )
              ],
            ),
            body: _children[currentIndex]


        ),
      ),
    );
  }
}
