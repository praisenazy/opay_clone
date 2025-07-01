import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selectedIndex = 0;
  final List<String> chips = ['Transactions', 'Services', 'Activities'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
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
              title: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: const Text(
                    'Notifications',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 96,
            child: Row(
              children: List.generate(chips.length, (index) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? Colors.greenAccent[100]
                              : Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color:
                            isSelected
                                ? const Color.fromARGB(255, 165, 221, 194)
                                : Colors.transparent,
                      ),
                    ),
                    child: Text(
                      chips[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:
                            isSelected
                                ? const Color.fromARGB(255, 7, 181, 97)
                                : Colors.black26,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Positioned(
            top: 350,
            left: 130,
            child: Expanded(child: buildContent()),
          ),
        ],
      ),
    );
  }

  Widget buildContent() {
    switch (selectedIndex) {
      case 0:
        return Text(
          'No New Notifications',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
        );
      case 1:
        return Text(
          'No New Notifications',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
        );
      case 2:
        return Text(
          'No New Notifications',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black87,
          ),
        );
      default:
        return const Text('Unknown');
    }
  }
}
