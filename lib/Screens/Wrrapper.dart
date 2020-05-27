import 'package:caffeapp/Screens/Auth.dart';
import 'package:caffeapp/Screens/Home.dart';
import 'package:caffeapp/model/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    // return either the Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
