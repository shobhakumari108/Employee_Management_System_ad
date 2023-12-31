// import 'dart:io';

// import 'package:employee_management_ad/screen/home.dart';
// import 'package:employee_management_ad/util/appbar.dart';
// import 'package:employee_management_ad/widgets/textfield.dart';
// import 'package:flutter/material.dart';

// class EditEmployeeScreen extends StatefulWidget {
//   const EditEmployeeScreen({super.key});

//   @override
//   State<EditEmployeeScreen> createState() => _EditEmployeeScreenState();
// }

// class _EditEmployeeScreenState extends State<EditEmployeeScreen> {
//   // Add your controllers
//   TextEditingController _firstNameController = TextEditingController();
//   TextEditingController _lastNameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _numberController = TextEditingController();
//   TextEditingController _companyNameController = TextEditingController();
//   TextEditingController _employeeIdController = TextEditingController();
//   TextEditingController _managerIdController = TextEditingController();
//   TextEditingController _joiningDateController = TextEditingController();
//   TextEditingController _jobTitleController = TextEditingController();
//   TextEditingController _addressController = TextEditingController();
//   TextEditingController _departmentController = TextEditingController();
//   TextEditingController _educationController = TextEditingController();
//   TextEditingController _employmentStatusController = TextEditingController();
//   TextEditingController _workScheduleController = TextEditingController();

//   File? _pickedImage;

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: buildAppBar(context, "Profile Screen"),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 100),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 40.0),
//                 Center(
//                   child: GestureDetector(
//                     onTap: _pickImage,
//                     child: CircleAvatar(
//                       backgroundColor: Color.fromARGB(255, 240, 239, 239),
//                       radius: 50,
//                       backgroundImage: _pickedImage != null
//                           ? FileImage(File(_pickedImage!.path))
//                           : null,
//                       child: _pickedImage == null
//                           ? Icon(
//                               Icons.camera_alt,
//                               size: 40,
//                             )
//                           : null,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40.0),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: buildTextFieldWithIcon(
//                         controller: _firstNameController,
//                         hintText: 'First Name',
//                         icon: Icons.person,
//                       ),
//                     ),
//                     SizedBox(width: 20.0),
//                     Expanded(
//                       flex: 2,
//                       child: buildTextFieldWithIcon(
//                         controller: _lastNameController,
//                         hintText: 'Last Name',
//                         icon: Icons.person,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _emailController,
//                   hintText: 'Email',
//                   icon: Icons.email,
//                 ),
//                 SizedBox(height: 20.0),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 2,
//                       child: buildTextFieldWithIcon(
//                         controller: _numberController,
//                         hintText: 'Mobile Number',
//                         icon: Icons.phone,
//                       ),
//                     ),
//                     SizedBox(width: 20.0),
//                     Expanded(
//                       child: buildTextFieldWithIcon(
//                         controller: _companyNameController,
//                         hintText: 'Company Name',
//                         icon: Icons.business,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20.0),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: buildTextFieldWithIcon(
//                         controller: _employeeIdController,
//                         hintText: 'Employee ID',
//                         icon: Icons.person,
//                       ),
//                     ),
//                     SizedBox(width: 20.0),
//                     Expanded(
//                       child: buildTextFieldWithIcon(
//                         controller: _managerIdController,
//                         hintText: 'Manager ID',
//                         icon: Icons.person,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _joiningDateController,
//                   hintText: 'Joining Date',
//                   icon: Icons.calendar_today,
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _jobTitleController,
//                   hintText: 'Job Title',
//                   icon: Icons.work,
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _addressController,
//                   hintText: 'Address',
//                   icon: Icons.location_on,
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _departmentController,
//                   hintText: 'Department',
//                   icon: Icons.work,
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _educationController,
//                   hintText: 'Education',
//                   icon: Icons.school,
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _employmentStatusController,
//                   hintText: 'Employment Status',
//                   icon: Icons.work,
//                 ),
//                 SizedBox(height: 20.0),
//                 buildTextFieldWithIcon(
//                   controller: _workScheduleController,
//                   hintText: 'Work Schedule',
//                   icon: Icons.access_time,
//                 ),
//                 SizedBox(height: 60),
//                 SizedBox(
//                   width: size.width,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Access the entered values and picked image
//                       String firstName = _firstNameController.text;
//                       String lastName = _lastNameController.text;
//                       String email = _emailController.text;
//                       String number = _numberController.text;
//                       String companyName = _companyNameController.text;
//                       String employeeId = _employeeIdController.text;
//                       String managerId = _managerIdController.text;
//                       String joiningDate = _joiningDateController.text;
//                       String jobTitle = _jobTitleController.text;

//                       String address = _addressController.text;
//                       String department = _departmentController.text;
//                       String education = _educationController.text;
//                       String employmentStatus =
//                           _employmentStatusController.text;
//                       String workSchedule = _workScheduleController.text;

//                       // Process the data as needed
//                       print('First Name: $firstName');
//                       print('Last Name: $lastName');
//                       print('Email: $email');
//                       print('Number: $number');
//                       print('Company Name: $companyName');
//                       print('Employee ID: $employeeId');
//                       print('Manager ID: $managerId');
//                       print('Joining Date: $joiningDate');
//                       print('Job Title: $jobTitle');
//                       print('Address: $address');
//                       print('Department: $department');
//                       print('Education: $education');
//                       print('Employment Status: $employmentStatus');
//                       print('Work Schedule: $workSchedule');

//                       if (_pickedImage != null) {
//                         print('Image Path: ${_pickedImage!.path}');
//                       }
//                       // Add processing for additional fields
//                       // ...
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: const Color.fromARGB(255, 61, 124, 251),
//                     ),
//                     child: Text(
//                       'Save',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Expanded(flex: 3, child: Container()),
//         ),
//       ),
//     );
//   }

//   // Add function to pick image
//   void _pickImage() {
//     // Implement image picking logic
//     // ...
//   }
// }
