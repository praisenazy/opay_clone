import 'package:flutter/material.dart';

class SavingsItem extends StatelessWidget {
  final List<Widget> items = [
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 95, 76, 108),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/arrow.png',
                width: 20,
                height: 20,
                color: Color.fromARGB(255, 95, 1, 167),
              ),
              const SizedBox(width: 10),
              const Text(
                'Targets',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            maxLines: 3,
            ' Save daily, weekly, or '
            'monthly towards your goal.',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 95, 76, 108),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/safe_box.png',
                width: 20,
                height: 20,
                color: Color.fromARGB(255, 95, 1, 167),
              ),
              const SizedBox(width: 10),
              const Text(
                'SafeBox',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            maxLines: 3,
            ' Your daily, weekly or '
            'monthly automatic savings.',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 95, 76, 108),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/lock.png',
                width: 20,
                height: 20,
                color: Color.fromARGB(255, 95, 1, 167),
              ),
              const SizedBox(width: 10),
              const Text(
                'Fixed',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            maxLines: 3,
            'Min: ₦1000                '
            'Tenor: 7-1000 days',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 95, 76, 108),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/bag.png',
                width: 20,
                height: 20,
                color: Color.fromARGB(255, 95, 1, 167),
              ),
              const SizedBox(width: 10),
              const Text(
                'Spend & Save}',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            maxLines: 3,
            ' Your percentage.  '
            'savings every time you spend or transfer.',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 95, 76, 108),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/trend.png',
                width: 20,
                height: 20,
                color: Color.fromARGB(255, 95, 1, 167),
              ),
              const SizedBox(width: 10),
              const Text(
                'Savings Report',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            maxLines: 3,
            'Check out Your Savings journey so far',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  ];
  SavingsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.0,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return items[index];
      },
    );
  }
}
