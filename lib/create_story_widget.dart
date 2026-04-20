import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateStoryWidget extends StatelessWidget {
  final String userImage;

  CreateStoryWidget({super.key, required this.userImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage('assets/images/messy.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon:  Icon(Icons.add),
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              'Create Story',
              style:  TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black54,
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}