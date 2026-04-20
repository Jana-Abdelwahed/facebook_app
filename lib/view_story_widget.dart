import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewStoryWidget extends StatelessWidget {
  final String userImage;
  final String storyImage;

  ViewStoryWidget({
    super.key,
    required this.userImage,
    required this.storyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(userImage),
              backgroundColor: Colors.blue,
            ),
          ),


        ],
      ),
    );
  }
}