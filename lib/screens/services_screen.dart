import 'package:flutter/material.dart';
import 'package:profile_dashboard/helpers/constants.dart';
import 'package:profile_dashboard/screens/splash.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
        actions: [
          InkWell(
            onTap: () =>
                //  Navigator.popUntil(context, (route) => route.isFirst),
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                  (route) => false,
                ),
            child: Icon(Icons.logout, color: AppConstants.primaryColor),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Center(child: Center(child: Text("Services Screen"))),
    );
  }
}
/*
Navigator
push , pop , pushReplacment , popUntil , pushAndRemoveUntil


Navigator 1.0 
Navigator 2.0
Recommended routing
*/