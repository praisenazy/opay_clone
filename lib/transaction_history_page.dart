import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_banking_app/statics_page.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({super.key});

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  bool showCategory = false;
  bool showStatus = false;
  String selectedCategory = 'All Categories';
  String selectedStatus = 'All Status';
  final List<String> categories = [
    'All Categories',
    'Bank Deposit',
    'Transfer from',
    'Transfer To',
    'Airtime',
    'Betting',
    'Mobile Data',
    'Cash Deposit',
    'OWealth',
    'Add Money',
    'OPay Card Payment',
    'Electricity',
    'Tv',
    'Reversal',
    'Cash Withdraw',
    'Online Payment',
    'Fixed',
    'Targets',
    'Spend & Save',
    'safeBox',
    'USSD Charge',
    'SMS Subscription',
  ];
  final List<String> status = [
    'All Status',
    'Successful',
    'Pending',

    'Failed',
    'To be paid',
    'Reversed',
  ];
  Widget buildToggle({
    required bool isSelected,
    required Color textColor,
    required String label,
    required VoidCallback onTap,
    required Color backgroundColor,
    EdgeInsets textPadding = const EdgeInsets.only(left: 0),
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 188,
        height: 40,
        padding: textPadding,
        decoration: BoxDecoration(
          color: backgroundColor,

          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  label,
                  style: TextStyle(
                    color: textColor,

                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            Icon(
              isSelected ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 22,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionList({
    required List<String> items,
    required String selected,
    required EdgeInsets padding,
    required Function(String) onSelect,
    AlignmentGeometry? alignment,
    double spacing = 16,
    double runSpacing = 16,
    double? width,
    double? height,
    child,
  }) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children:
          items.map((item) {
            final bool isSelected = item == selected;
            return GestureDetector(
              onTap: () {
                onSelect(item);
              },
              child: Container(
                alignment: alignment,
                width: width,
                height: height,
                padding: padding,

                decoration: BoxDecoration(
                  color:
                      selected == item
                          ? const Color.fromARGB(65, 2, 152, 97)
                          : const Color.fromARGB(255, 219, 236, 229),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  item,
                  style: TextStyle(
                    color:
                        isSelected
                            ? const Color.fromARGB(255, 2, 152, 97)
                            : Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            );
          }).toList(),
    );
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
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 80),
                child: const Text(
                  'Transactions',
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
      body: Stack(
        children: [
          Positioned(
            top: 250,
            left: 50,

            child: Text(
              'No transaction records found for the past 1 year.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.black54,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    buildToggle(
                      label: selectedCategory,
                      isSelected: showCategory,
                      onTap: () {
                        setState(() {
                          showCategory = !showCategory;
                          showStatus = false;
                        });
                      },
                      backgroundColor:
                          showCategory
                              ? const Color.fromARGB(65, 2, 152, 97)
                              : const Color.fromARGB(255, 219, 236, 229),
                      textColor:
                          showCategory
                              ? const Color.fromARGB(255, 2, 152, 97)
                              : Colors.black,
                      textPadding: const EdgeInsets.only(right: 4, left: 24),
                    ),
                    buildToggle(
                      label: selectedStatus,
                      isSelected: showStatus,
                      onTap: () {
                        setState(() {
                          showStatus = !showStatus;
                          showCategory = false;
                        });
                      },
                      backgroundColor:
                          showStatus
                              ? const Color.fromARGB(65, 2, 152, 97)
                              : const Color.fromARGB(255, 219, 236, 229),
                      textColor:
                          showStatus
                              ? const Color.fromARGB(255, 2, 152, 97)
                              : Colors.black,
                      textPadding: const EdgeInsets.only(left: 45, right: 4),
                    ),
                  ],
                ),
              ),
              if (showCategory || showStatus)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showCategory = false;
                      showStatus = false;
                    });
                  },
                  child: Container(
                    height: 696,
                    // ignore: deprecated_member_use
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
            ],
          ),
          if (showCategory)
            Positioned(
              top: 50,
              left: 0,
              right: 0,

              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 8),

                height: 340,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: ListView(
                  children: [
                    buildOptionList(
                      items: categories,

                      selected: selectedCategory,
                      onSelect: (value) {
                        setState(() {
                          selectedCategory = value;
                          showCategory = false;
                        });
                      },
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          if (showStatus)
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 8),
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),

                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),

                  children: [
                    buildOptionList(
                      items: status,
                      selected: selectedStatus,
                      onSelect: (value) {
                        setState(() {
                          selectedStatus = value;
                          showStatus = false;
                        });
                      },
                      alignment: Alignment.center,
                      width: 120,
                      height: 40,

                      spacing: 14,
                      runSpacing: 10,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 241, 247, 245),
        selectedItemColor: Color.fromARGB(255, 1, 156, 99),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StaticsPage()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/transaction_outlined.svg',
              height: 30,
              width: 30,
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
              color: Colors.grey,
            ),
            label: 'Statics',
          ),
        ],
      ), // Add your bottom navigation bar here
    );
  }
}
