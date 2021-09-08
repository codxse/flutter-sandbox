import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_demo/widgets/contact_button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage("https://picsum.photos/200"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Nadiar AS", style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              )),
            )
          ],
        ),
        actions: [
          ContactButton(
            buttonText: "Contact",
            icon: const Icon(Icons.send),
            onPressed: () {
              print("Hello World");
            },
          )
        ],
        elevation: 0.0,
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(opacity: 0.3, child: Image.asset
                      ('assets/images/andrew-draper-WuGflQdXbbo-unsplash.jpg')),
                    const Text('Hello world!!')
                  ],
                )
              ],
            ),
          )),
        Expanded(
          flex: 3,
          child: Container(color: Colors.green))
      ],
    );
  }
}

