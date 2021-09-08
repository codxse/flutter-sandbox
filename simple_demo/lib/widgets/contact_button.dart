import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final Function onPressed;
  const ContactButton({Key? key, required this.buttonText, required this
      .icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextButton.icon(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(
                  color: Colors.black12
              ),
              backgroundColor: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0)
              )
          ),
          onPressed: () {
            onPressed();
          },
          icon: const Icon(Icons.send),
          label: Text(buttonText, style: const TextStyle(color: Colors.black54))),
    );
  }
}
