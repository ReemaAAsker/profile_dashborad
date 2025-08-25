import 'package:flutter/material.dart';
import 'package:profile_dashboard/helpers/constants.dart';
import 'package:profile_dashboard/screens/profile_dash.dart';
import 'package:profile_dashboard/widgets/custom_text_feild.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcom in Our App',
              style: AppConstants.primary_numbers_text_style,
            ),
            Text(
              'sign in to access your account',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 40),

            CustomTextFeild(
              hint: 'Enter your Email',
              icon: Icons.email,
              controller: emailCont,
            ),
            CustomTextFeild(
              controller: passCont,
              hint: 'password',
              icon: Icons.lock_outline_rounded,
              isPassword: true,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                //@
                String emailData = emailCont.text;
                String passData = passCont.text;

                if (emailData.isEmpty | passData.isEmpty) {
                  showMessgae(context, 'Enter valid data');
                  emailCont.clear();
                  passCont.clear();
                } else if (!emailData.contains('@')) {
                  // .com
                  showMessgae(context, 'Enter valid email');
                } else if (passData.length < 5) {
                  //spcial character
                  showMessgae(context, 'Enter valid password');
                  passCont.clear();
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfileDash();
                      },
                    ),
                  );
                }
                // print();
              },

              // login(context),
              child: Text('Login', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 15),
                backgroundColor: AppConstants.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // login(BuildContext context) {

  // }
}
