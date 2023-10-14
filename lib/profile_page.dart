import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Text('Profile Page'),
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: Container(
            color: Colors.amber,
          ),
        )
      ],
    );
  }
}