import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  const AppButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 335,
        height: 50,
        padding: const EdgeInsets.symmetric(vertical: 1),
        decoration: ShapeDecoration(
          color: const Color(0xFF228B22),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(120, 0, 50, 0),
          child: Row(children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Aeonik',
                fontWeight: FontWeight.w400,
                height: 0.08,
                letterSpacing: -0.41,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            const Icon(
              Icons.arrow_forward,
              size: 15,
              color: Colors.white,
            )
          ]),
        ));
  }
}
