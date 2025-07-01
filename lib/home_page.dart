import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:online_banking_app/cards_page.dart';
import 'package:online_banking_app/finance_page.dart';
import 'package:online_banking_app/profile_page.dart';
import 'package:online_banking_app/reward_page.dart';
import 'package:remixicon/remixicon.dart';
import 'grid_details.dart';

class OpayAppPage extends StatefulWidget {
  const OpayAppPage({super.key});

  @override
  State<OpayAppPage> createState() => _OpayAppPageState();
}

final List<Map<String, dynamic>> items = [
  {'type': 'text', 'label': 'Available Balance', 'icon': Icons.verified_user},
  {
    'type': 'TextButton',
    'label': 'Transaction History',
    'icon': Icons.arrow_forward_ios,
  },
  {'type': 'balance', 'icon': Icons.arrow_forward_ios, 'label': '0.00'},
  {'type': 'Button', 'label': 'Add Money', 'icon': Icons.add},
];

List<Widget> pages = [
  GridDetails(items: items),
  RewardPage(),
  FinancePage(),
  CardsPage(),
  ProfilePage(),
];

class _OpayAppPageState extends State<OpayAppPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentPage, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(228, 226, 245, 239),
        selectedItemColor: Color.fromARGB(255, 1, 156, 99),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(RemixIcons.diamond_line),
            activeIcon: Icon(RemixIcons.diamond_fill),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.chartLine),
            activeIcon: Icon(MdiIcons.chartLineStacked),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.creditCardOutline),
            activeIcon: Icon(MdiIcons.creditCard),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face_outlined),
            activeIcon: Icon(Icons.face),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
