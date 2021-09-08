import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Icon icon;
  final VoidCallback onPressed;

  const ContactButton({Key? key, required this.buttonText, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12.0, 16.0, 12.0),
      child: TextButton.icon(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(
                  color: Colors.black12
              ),
              backgroundColor: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)
              )
          ),
          onPressed: onPressed,
          icon: icon,
          label: Text(buttonText, style: const TextStyle(color:
          Colors.black54),)),
    );
  }
}
