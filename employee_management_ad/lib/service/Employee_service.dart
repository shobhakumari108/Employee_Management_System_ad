import 'dart:convert';
import 'package:employee_management_ad/model/userdata.dart';
import 'package:employee_management_ad/util/toaster.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:employee_management_ad/model/userdata.dart';

class EmployeeService {
  static const String apiUrl = "http://192.168.29.135:2000/app/users/addUser";

  static Future<bool> addEmployee(UserData user) async {
    var headers = {
      'Content-Type': 'application/json',
      // 'Authorization':
      // 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyRGF0YSI6eyJ1c2VybmFtZSI6IlNvYmhhIiwiZW1haWwiOiJTazEyM0BnbWFpbC5jb20iLCJpZCI6IjY1OGFjN2EyZWYzODE5Y2M0YWM2MGE3ZCIsImZpcnN0TmFtZSI6IlNvYmhhIiwibGFzdE5hbWUiOiJLdW1hcmkifSwiaWF0IjoxNzAzOTEzMDg3LCJleHAiOjE3MDQzNDUwODd9.MgFDmIudXWDHy065SB6BWRkFg94I8uszutfk9hf9RWY'
    };

    var response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: json.encode({
        "FirstName": user.firstName,
        "LastName": user.lastName,
        "Email": user.email,
        "Password": user.password,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("================Sign-up successful====================");
      print(await response.body);
      showToast("Employee added successfully", Colors.black);
      return true; // Employee added successfully
    } else {
      print("================Sign-up failed====================");
      print(response.reasonPhrase);
      showToast("Failed to add employee", Colors.red);

      return false; // Failed to add employee
    }
  }

//   //===========employee list
//    // Replace with your API URL

//  static Future<void> getEmployees() async {
//    var headers = {
//   'Content-Type': 'application/json',
//   'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyRGF0YSI6eyJ1c2VybmFtZSI6IlNvYmhhIiwiZW1haWwiOiJTazEyM0BnbWFpbC5jb20iLCJpZCI6IjY1OGFjN2EyZWYzODE5Y2M0YWM2MGE3ZCIsImZpcnN0TmFtZSI6IlNvYmhhIiwibGFzdE5hbWUiOiJLdW1hcmkifSwiaWF0IjoxNzAzOTEzMDg3LCJleHAiOjE3MDQzNDUwODd9.MgFDmIudXWDHy065SB6BWRkFg94I8uszutfk9hf9RWY'
// };
// var request = http.Request('GET', Uri.parse('http://localhost:2000/app/users/getUsers'));
// request.body = json.encode({
//   "FirstName": "Nikhil",
//   "LastName": "Kumar",
//   "Email": "nk1@gmail.com",
//   "Password": "12345"
// });
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }

//   }

//   //======================================

//   // Future<List<Map<String, dynamic>>?> employeeList() async {
//   //   var headers = {
//   //     'Content-Type': 'application/json',
//   //     // 'Authorization':
//   //     // 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyRGF0YSI6eyJ1c2VybmFtZSI6IlNvYmhhIiwiZW1haWwiOiJTazEyM0BnbWFpbC5jb20iLCJpZCI6IjY1OGFjN2EyZWYzODE5Y2M0YWM2MGE3ZCIsImZpcnN0TmFtZSI6IlNvYmhhIiwibGFzdE5hbWUiOiJLdW1hcmkifSwiaWF0IjoxNzAzOTEzMDg3LCJleHAiOjE3MDQzNDUwODd9.MgFDmIudXWDHy065SB6BWRkFg94I8uszutfk9hf9RWY'
//   //   };

//   //   var employeeListUrl =
//   //       Uri.parse('http://192.168.29.135:2000/app/users/getUsers');

//   //   try {
//   //     var response = await http.get(employeeListUrl, headers: headers);

//   //     if (response.statusCode == 200) {
//   //       var userList = json.decode(response.body)['users'] as List;
//   //       return userList.cast<Map<String, dynamic>>();
//   //     } else {
//   //       print('Request failed with status: ${response.statusCode}');
//   //       return null;
//   //     }
//   //   } catch (e) {
//   //     print('Error: $e');
//   //     return null;
//   //   }
//   // }
}
