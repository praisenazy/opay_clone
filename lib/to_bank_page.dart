import 'package:flutter/material.dart';

class ToBankPage extends StatefulWidget {
  const ToBankPage({super.key});

  @override
  State<ToBankPage> createState() => _ToBankPageState();
}

class _ToBankPageState extends State<ToBankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 247, 245),
        leading: IconButton(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
          ),
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: const Text(
                  'Transfer To OPay Account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Text(
              'History',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 1, 156, 99),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
