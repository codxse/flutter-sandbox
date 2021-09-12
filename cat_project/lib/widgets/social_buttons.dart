import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            children: [
              TextButton.icon(
                  onPressed: () {

                  },
                  icon: Image.asset('assets/images/facebook.png', width:
                  14, height: 15),
                  label: const Text('Facebook')
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/twitter.jpeg', width:
                  14, height: 15),
                  label: const Text('Twitter')
              ),
            ],
          ),
        )
      ],
    );
  }
}