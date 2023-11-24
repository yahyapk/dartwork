import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'connect.dart';
class MyRequests extends StatefulWidget {
  const MyRequests({super.key});

  @override
  State<MyRequests> createState() => _MyRequestsState();
}

class _MyRequestsState extends State<MyRequests> {
  var flag = 0;
  @override
  void initState() {
    super.initState();

    print('inside init fn');
    getData();
    setState(() {});
  }
var lid=14;

  Future<dynamic> getData() async {
    print('inside getData fn');
    var data = {
      'cabType': 'deluxe',
    };
    print(data);
    var response =
    await post(Uri.parse('${Con.url}viewRequest_driver.php'), body: data);
    print(response.body);
    print(response.statusCode);
    print('Response: ${response.body}');

    jsonDecode(response.body)[0]['result'] == 'success' ? flag = 1 : flag = 0;

    return jsonDecode(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My Requests'),
      ),
    );
  }
}
