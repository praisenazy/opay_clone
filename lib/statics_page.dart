import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/svg.dart';
import 'package:online_banking_app/grid_details.dart';
import 'package:online_banking_app/home_page.dart';

class StaticsPage extends StatefulWidget {
  const StaticsPage({super.key});

  @override
  State<StaticsPage> createState() => _StaticsPageState();
}

class _StaticsPageState extends State<StaticsPage> {
  int selectedIndex = 0;
  String selectedMonth = 'May';
  int selectedYear = 2025;
  final List<String> tabs = ['Expenses', 'Income'];

  void showYearMonthPicker() {
    final overlay = Overlay.of(context);
    late OverlayEntry fixedBottomBar;
    late OverlayEntry fixedAppBar;

    final List<int> years = List.generate(30, (index) => 2015 + index);
    final months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    int tempYear = selectedYear;
    int tempMonth =
        selectedMonth == 'Jan'
            ? 1
            : selectedMonth == 'Feb'
            ? 2
            : selectedMonth == 'Mar'
            ? 3
            : selectedMonth == 'Apr'
            ? 4
            : selectedMonth == 'May'
            ? 5
            : selectedMonth == 'Jun'
            ? 6
            : selectedMonth == 'Jul'
            ? 7
            : selectedMonth == 'Aug'
            ? 8
            : selectedMonth == 'Sep'
            ? 9
            : selectedMonth == 'Oct'
            ? 10
            : selectedMonth == 'Nov'
            ? 11
            : 12;

    fixedBottomBar = OverlayEntry(
      builder:
          (_) => Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              elevation: 0,

              backgroundColor: Color.fromARGB(255, 241, 247, 245),
              selectedItemColor: Color.fromARGB(255, 1, 156, 99),
              unselectedItemColor: Colors.grey,
              currentIndex: 1,

              onTap: (index) {
                if (index == 0) {
                  Navigator.pop(context);
                }
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/transaction_outlined.svg',
                    height: 28,
                    width: 28,
                    color: Colors.grey,
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/transaction.svg',
                    height: 30,
                    width: 30,
                    color: Color.fromARGB(255, 1, 156, 99),
                  ),
                  label: 'Transactons',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/statics_outlined.svg',
                    height: 30,
                    width: 30,
                    color: Colors.grey,
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/icons/statics.svg',
                    height: 30,
                    width: 30,
                    color: Color.fromARGB(255, 1, 156, 99),
                  ),
                  label: 'Statistics',
                ),
              ],
            ),
          ),
    );
    overlay.insert(fixedBottomBar);

    fixedAppBar = OverlayEntry(
      builder:
          (_) => Positioned(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GridDetails(items: []),
                    ),
                  );
                },
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: const Text(
                        'Statistics',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 1, 156, 99),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
    overlay.insert(fixedAppBar);

    showCupertinoModalPopup(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (context) {
        return Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 88),
              height: 380,

              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 247, 245),
              ),

              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    color: Color.fromARGB(255, 241, 247, 245),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              selectedMonth = months[tempMonth - 1];
                              selectedYear = tempYear;
                            });
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Color.fromARGB(255, 1, 156, 99),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CupertinoPicker(
                            useMagnifier: true,
                            magnification: 1.0,
                            diameterRatio: 100.0,
                            selectionOverlay: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(height: 1, color: Colors.grey[200]),
                                const SizedBox(height: 40),
                                Container(height: 1, color: Colors.grey[200]),
                              ],
                            ),
                            scrollController: FixedExtentScrollController(
                              initialItem: years.indexOf(selectedYear),
                            ),
                            itemExtent: 60,
                            onSelectedItemChanged: (i) {
                              tempYear = years[i];
                            },
                            children:
                                years
                                    .map(
                                      (year) => Center(
                                        child: Text(
                                          year.toString(),
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    )
                                    .toList(),
                          ),
                        ),

                        Expanded(
                          child: CupertinoPicker(
                            useMagnifier: false,
                            magnification: 1.0,
                            diameterRatio: 100.0,
                            selectionOverlay: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Divider(height: 1, color: Colors.grey[200]),
                                const SizedBox(height: 40),
                                Divider(height: 1, color: Colors.grey[200]),
                              ],
                            ),
                            scrollController: FixedExtentScrollController(
                              initialItem: tempMonth - 1,
                            ),
                            itemExtent: 60,
                            onSelectedItemChanged: (index) {
                              tempMonth = index + 1;
                            },
                            children:
                                months
                                    .map(
                                      (month) => Center(
                                        child: Text(
                                          month,
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    )
                                    .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              height: 120,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(221, 241, 247, 245),
                      Color.fromARGB(112, 241, 247, 245),
                    ],
                    stops: const [0.0, 5],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              height: 120,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(112, 241, 247, 245),
                      Color.fromARGB(221, 241, 247, 245),
                    ],
                    stops: const [0.0, 5],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ).whenComplete(() {
      Future.delayed(Duration(seconds: 1)).then((_) {
        fixedBottomBar.remove();
        fixedAppBar.remove();
      });
    });
  }

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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OpayAppPage()),
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 80),
                child: const Text(
                  'Statistics',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Text(
              'Download',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 1, 156, 99),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 6),
            width: double.infinity,
            height: 44,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 247, 245),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(tabs.length, (index) {
                final isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        tabs[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              isSelected ? FontWeight.w400 : FontWeight.w300,
                          color:
                              isSelected
                                  ? Color.fromARGB(255, 1, 156, 99)
                                  : Colors.black87,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              isSelected
                                  ? const Color.fromARGB(255, 2, 192, 123)
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 3,
                        width: 205,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 20),
          Expanded(child: buildContent()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 241, 247, 245),
        selectedItemColor: Color.fromARGB(255, 1, 156, 99),
        unselectedItemColor: Colors.grey,
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/transaction_outlined.svg',
              height: 28,
              width: 28,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/transaction.svg',
              height: 30,
              width: 30,
              color: Color.fromARGB(255, 1, 156, 99),
            ),
            label: 'Transactons',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/statics_outlined.svg',
              height: 30,
              width: 30,
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/statics.svg',
              height: 30,
              width: 30,
              color: Color.fromARGB(255, 1, 156, 99),
            ),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }

  Widget buildContent() {
    String displayDate =
        '${selectedMonth.toString().padLeft(2, '0')}.$selectedYear';

    switch (selectedIndex) {
      case 0:
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: showYearMonthPicker,

                child: Row(
                  children: [
                    Text(
                      displayDate,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down, size: 30, color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Total 0 Expenses',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      '₦',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 4),

                  Text(
                    '0:00',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: const Text(
                  'No data',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        );
      case 1:
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: showYearMonthPicker,
                child: Row(
                  children: [
                    Text(
                      displayDate,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down, size: 30, color: Colors.grey),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Total 0 Income',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      '₦',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 4),

                  Text(
                    '0:00',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: const Text(
                  'No data',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        );
      default:
        return const Center(child: Text('No data'));
    }
  }
}
