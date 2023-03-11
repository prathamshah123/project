import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EmployeeRecords extends StatefulWidget {
  const EmployeeRecords({Key? key}) : super(key: key);

  @override
  State<EmployeeRecords> createState() => _EmployeeRecordsState();
}

class _EmployeeRecordsState extends State<EmployeeRecords> {

  List userdata = [];
  var arrnames =['Pratham','Abhinav','Kunal','Dharti','Saumil','Deep','Vassu','Prit','Ruchanshu','Devam'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getrecord();

  }

  // Future getrecord() async {
  //   String uri = "https://mtow.000webhostapp.com/viewdata.php";
  //   //String uri = "http://172.16.27.19/flutter_app/viewdata.php";
  //   try {
  //     var response = await http.get(Uri.parse(uri));
  //
  //     setState(() {
  //       userdata = json.decode(response.body);
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.grey.shade100,
  //
  //     body: ListView.builder(
  //       itemCount: userdata.length,
  //       itemBuilder: (context, index) {
  //         return Card(
  //           //color: Colors.deepOrange.shade500,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(15),),
  //           child: ListTile(
  //             //col:Color(0xFFFF981A),
  //             title: Text("${userdata[index]["number_plate"]}",style: TextStyle(fontSize: 15,),),
  //             subtitle: Text("${userdata[index]["area"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body : Container(
          //margin: EdgeInsets.symmetric(vertical: 2),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),),
                  child: ListTile(
                    title: Text(arrnames[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    subtitle: Text('GLS University',style: TextStyle(fontSize: 10),),
                    leading: Icon(Icons.account_circle_outlined),
                    trailing: IconButton(
                      iconSize: 20,
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          arrnames.removeAt(index);
                        });
                      },
                    ),
                  )
              );
            },
          ),
        ),
      ),
    );
  }
}