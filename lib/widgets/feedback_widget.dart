import 'package:flutter/material.dart';

class FeedbackWidget extends StatelessWidget {
  NetworkImage background_img;
  String profile_img;
  String feedback_text;
  FeedbackWidget({
    Key? key,
    required this.background_img,
    required this.profile_img,
    required this.feedback_text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.centerEnd,
      children: [
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: background_img),
          ),
        ),
        Positioned(
          left: 125,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(231, 158, 158, 158),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                Image.asset('icons/$profile_img', width: 60, height: 60),

                Expanded(
                  child: Text(
                    feedback_text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
