import 'package:cat_project/widgets/body.dart';
import 'package:cat_project/widgets/contact_button.dart';
import 'package:cat_project/widgets/social_buttons.dart';
import 'package:flutter/material.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.yellowAccent,
                foregroundImage: NetworkImage(
                    'https://picsum.photos/200'
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0), child: Text('Nadiar', style: TextStyle(color: Colors.black, fontSize:
            20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)))
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contact Me',
            icon: const Icon(Icons.send_sharp),
            onPressed: () {
              print('Hello World');
            },
          )
        ],
      ),
      body: Stack(
        children: const [
          Body(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SocialButtons(),
            )
          )
        ],
      ),
    );
  }
}

