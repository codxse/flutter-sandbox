import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Image.asset('assets/images/bg1.jpeg'),
                  ),
                  const Text("I'am Nadiar, nice to meet you"),
                ],
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(color: Colors.green,),
        )
      ],
    );
  }
}
