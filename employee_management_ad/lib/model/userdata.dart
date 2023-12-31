class UserData {
  String? email;
  String? password;
  String? token;
  String? firstName;
  String? lastName;
  String? sId;
  String? companyEmployeeID;
  String? managerID;
  // DateTime? joiningDate;
  List<String>? certificates;
  String? profilePhoto;
  String? jobTitle;
  String? mobileNumber;
  String? companyName;
  String? address;
  String? department;
  String? education;
  String? employmentStatus;
  String? workSchedule;

  UserData({
    this.email,
    this.password,
    this.token,
    this.firstName,
    this.lastName,
    this.sId,
    this.companyEmployeeID,
    this.managerID,
    // this.joiningDate,
    this.certificates,
    this.profilePhoto,
    this.jobTitle,
    this.mobileNumber,
    this.companyName,
    this.address,
    this.department,
    this.education,
    this.employmentStatus,
    this.workSchedule,
  });

  UserData.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      email = json['Email'];
      password = json['Password'];
      token = json['token'];
      firstName = json['FirstName'];
      lastName = json['LastName'];
      sId = json['_id'];
      companyEmployeeID = json['ComapnyEmplyeeID'];
      managerID = json['ManagerId'];
      // joiningDate = DateTime.parse(json['JoiningDate']);
      certificates = List<String>.from(json['Certificates']);
      profilePhoto = json['ProfilePhoto'];
      jobTitle = json['JobTitle'];
      mobileNumber = json['MoblieNumber'];
      companyName = json['CompanyName'];
      address = json['Address'];
      department = json['Department'];
      education = json['Education'];
      employmentStatus = json['EmploymentStatus'];
      workSchedule = json['WorkSedule'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user'] = {
      'Email': email,
      'Password': password,
      'FirstName': firstName,
      'LastName': lastName,
      '_id': sId,
      'ComapnyEmplyeeID': companyEmployeeID,
      'ManagerId': managerID,
      // 'JoiningDate': joiningDate?.toIso8601String(),
      'Certificates': certificates,
      'ProfilePhoto': profilePhoto,
      'JobTitle': jobTitle,
      'MoblieNumber': mobileNumber,
      'CompanyName': companyName,
      'Address': address,
      'Department': department,
      'Education': education,
      'EmploymentStatus': employmentStatus,
      'WorkSedule': workSchedule,
      'token': token
    };
    // data['token'] = token;
    return data;
  }
}
