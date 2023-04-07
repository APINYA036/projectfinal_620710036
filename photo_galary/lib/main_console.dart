//import 'package:photo_galary/pages/photo_list.dart';

main()
{
  List<Map<String, dynamic>> userListOfMap =[
    {
      'firstName': 'Apinya', 'lastName': 'Raksri', 'age': 22,
    },
    {
      'firstName': 'Khun', 'lastName': 'kubb', 'age': 20,
    }
  ];
  List userList = userListOfMap.map((item){
    return User.fromJson(item);
  }
  ).toList();
  /*for (var i =0 ; i< userListOfMap.length;i++)
    {
      var user = userListOfMap[i];
      var userModel = User(
        firstName : user['firstName'],
        lastName : user['lastName'],
        age : user['age'],
      );
      userList.add(userModel);
    }*/
}

class User{
  final String firstName;
  final String lastName;
  final int age;

  User({required this.firstName, required this.lastName,required this.age});
  factory User.fromJson(Map<String,dynamic> json) {
    return User(
      firstName: json['firstName'],
      lastName: json['lastName'],
      age: json['age'],
    );
  }
}
