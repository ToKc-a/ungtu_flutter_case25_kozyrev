import 'package:flutter/material.dart';

class ListViewCase extends StatefulWidget {
  const ListViewCase({Key? key}) : super(key: key);

  @override
  _ListViewCaseState createState() => _ListViewCaseState();
}

class _ListViewCaseState extends State<ListViewCase> {
  List<User> UsersList = [
    User(name: 'Антон Козырев', phone: '111-111-111'),
    User(name: 'Айрат Галямов', phone: '222-222-222'),
    User(name: 'Петр Петров', phone: '333-333-333'),
    User(name: 'Михаил Михайлов', phone: '444-444-444'),
    User(name: 'Николай Николаев', phone: '555-555-555'),
    User(name: 'Валентин Валентинов', phone: '666-666-666'),
    User(name: 'Юлия Васильева', phone: '777-777-777'),
    User(name: 'Анатолий Ромашкин', phone: '888-888-888'),
    User(name: 'Виктория Воронина', phone: '999-999-999'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Кейс-задание 2.5'),
        ),
        body: Container(
          child: ListView(
            children: UsersList.map((userone) {
              return Container(
                child: ListTile(
                  title: Text(
                    userone.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    userone.phone,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {},
                ),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.indigo[400],
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(50)),
              );
            }).toList(),
          ),
        ));
  }
}

class User {
  String name, phone;

  User({required this.name, required this.phone});
}
