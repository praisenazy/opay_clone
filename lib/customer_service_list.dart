import 'package:flutter/material.dart';

class CustomerServiceList extends StatelessWidget {
  CustomerServiceList({super.key});
  final List<Map<String, dynamic>> items = [
    {
      'icon': Icons.receipt_long_outlined,
      'label': 'Transfer',
      'text': 'Dispute',
    },
    {
      'icon': Icons.import_export_sharp,
      'label': 'Erroneous',
      'text': 'Transfer Recall',
    },
    {'icon': Icons.lock_open_outlined, 'label': 'Lift', 'text': 'Restrictions'},
    {'icon': Icons.credit_card_outlined, 'label': 'Apply', 'text': 'Card'},
    {'icon': Icons.lock_outline_rounded, 'label': 'login &', 'text': 'Payment'},
    {'icon': Icons.upload, 'label': 'Account', 'text': 'Limits'},
    {
      'icon': Icons.send_to_mobile_outlined,
      'label': 'Mobile Number',
      'text': 'Change',
    },
    {
      'icon': Icons.notification_important_outlined,
      'label': 'Report',
      'text': 'Scam',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 25,
      ),
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 221, 235, 234),
                borderRadius: BorderRadius.circular(30),
              ),

              child: Icon(items[index]['icon'], color: Colors.black, size: 24),
            ),
            SizedBox(height: 8),
            Text(
              items[index]['label'],
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 97, 97, 97),
              ),
            ),
            Text(
              items[index]['text'],
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 97, 97, 97),
              ),
            ),
          ],
        );
      },
    );
  }
}
