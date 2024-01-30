import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String text;
  final String subtext;
  final String footnote;

  const TopBar(
      {Key? key,
      required this.text,
      required this.subtext,
      required this.footnote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.arrow_circle_left_outlined,
              size: 30,
              color: Colors.black), // Increased the size of the back arrow
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Aeonik',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                  letterSpacing: -0.20,
                ),
              ),
              const SizedBox(width: 2),
              const Text(
                'VolunQuest',
                style: TextStyle(
                  color: Color(0xFF228B22),
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Aeonik',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                  letterSpacing: -0.20,
                ),
              ),
              const SizedBox(width: 2),
              Text(
                subtext,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Aeonik',
                  fontWeight: FontWeight.w400,
                  height: 0.08,
                  letterSpacing: -0.20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                footnote,
                style: const TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 14.17,
                  fontFamily: 'Aeonik',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                  letterSpacing: -0.20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
