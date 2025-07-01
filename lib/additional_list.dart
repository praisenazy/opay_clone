import 'package:flutter/material.dart';

class AdditionalList extends StatelessWidget {
  final IconData icon;
  final String label;
  const AdditionalList({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(79, 178, 210, 197),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Icon(icon, color: Color.fromARGB(255, 1, 156, 99), size: 22),
        ),

        SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
