import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticanFace;
  const EmoticonFace({super.key, required this.emoticanFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 104, 160, 202),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Text(
        emoticanFace,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
