import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:remixicon/remixicon.dart';

class GridItem extends StatelessWidget {
  GridItem({super.key});

  final List<Map<String, dynamic>> griditem = [
    {'icon': Icons.bar_chart_sharp, 'label': 'Airtime'},
    {'icon': Icons.import_export_sharp, 'label': 'Data '},
    {'icon': Icons.sports_soccer_sharp, 'label': 'Betting '},
    {'icon': Icons.smart_display_sharp, 'label': 'Tv '},
    {'icon': MdiIcons.piggyBank, 'label': 'OWealth '},
    {'icon': RemixIcons.coin_fill, 'label': 'Loan '},
    {'icon': RemixIcons.hand_coin_fill, 'label': 'invitation '},
    {'icon': MdiIcons.dotsHorizontalCircle, 'label': 'More '},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.0,
        crossAxisCount: 4,
      ),
      itemCount: griditem.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(79, 178, 210, 197),
                borderRadius: BorderRadius.circular(20),
              ),

              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                constraints: const BoxConstraints(),
                icon: Icon(
                  griditem[index]['icon'],
                  color: Color.fromARGB(255, 1, 156, 99),
                  size: 22,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 8),
            Text(
              griditem[index]['label'],
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        );
      },
    );
  }
}
