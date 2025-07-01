import 'package:flutter/material.dart';
import 'package:online_banking_app/savings_item.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  bool isVisible = true;
  int selectedIndex = 0;
  final List<String> tabs = ['Savings', 'Loans'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(bottom: 1),
            height: 1020,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 14.0,
                right: 14.0,
                top: 10.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Finance',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'from BlueRidge Microfinance Bank',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 1),
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
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 60,
                                  left: 40,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      tabs[index],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            isSelected
                                                ? Colors.black
                                                : const Color.fromARGB(
                                                  255,
                                                  120,
                                                  120,
                                                  120,
                                                ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      height: 2,
                                      width: 20,
                                      color:
                                          isSelected
                                              ? Colors.black
                                              : Colors.transparent,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        top: 1,
                        left: 300,
                        right: 0,
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(
                            left: 6,
                            right: 0,
                            top: 0,
                            bottom: 30,
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings_outlined,
                            color: const Color.fromARGB(151, 0, 0, 0),
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(child: buildContent()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContent() {
    switch (selectedIndex) {
      case 0:
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      IconButton(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(right: 10),
                        icon: Icon(
                          isVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 20,
                          color: const Color.fromARGB(161, 0, 0, 0),
                        ),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),

                      SizedBox(width: 165),
                      Text(
                        'Total Interest',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          textWidthBasis: TextWidthBasis.longestLine,
                          isVisible ? '₦ ' : '',

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),

                      Text(
                        textHeightBehavior: TextHeightBehavior(
                          applyHeightToFirstAscent: false,
                        ),
                        isVisible ? '0' : '',

                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isVisible
                          ? Text(
                            '.00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                          : Text(
                            '****',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          textWidthBasis: TextWidthBasis.longestLine,
                          isVisible ? '₦ ' : '',

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 1, 156, 99),
                          ),
                        ),
                      ),

                      Text(
                        textHeightBehavior: TextHeightBehavior(
                          applyHeightToFirstAscent: false,
                        ),
                        isVisible ? '0' : '',

                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 1, 156, 99),
                        ),
                      ),
                      isVisible
                          ? Text(
                            '.00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 156, 99),
                            ),
                          )
                          : Text(
                            '****',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 1, 156, 99),
                            ),
                          ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              height: 168,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(62, 191, 135, 231),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/coin_hand.png',
                        width: 20,
                        height: 20,
                        color: const Color.fromARGB(255, 95, 1, 167),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'OWealth',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Your daily returns.You can withdraw at any time.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 129, 128, 128),
                    ),
                  ),
                  const SizedBox(height: 60),
                  isVisible
                      ? Text(
                        '₦0:00',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      )
                      : Text(
                        '****',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SavingsItem(),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Insured by',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 38, 0, 67),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 15,
                  width: 1,
                  color: Color.fromARGB(255, 38, 0, 67),
                ),
                const SizedBox(width: 2),
                Text(
                  'NDIC',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 38, 0, 67),
                  ),
                ),
              ],
            ),
          ],
        );
      case 1:
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(252, 1, 156, 99),
                      Color.fromARGB(183, 217, 250, 238),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/logo.png',
                      width: 45,
                      height: 45,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 6),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'EaseMoni',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 80,
              left: 14,
              child: Opacity(
                opacity: 0.6,
                child: Container(
                  width: 354,
                  height: 270,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Get a loan of up to',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(143, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              '₦',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 1, 156, 99),
                              ),
                            ),
                          ),

                          Text(
                            '2,000,000',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 1, 156, 99),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        width: double.infinity,

                        alignment: Alignment.center,

                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 1, 136, 87),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),

                        child: Text(
                          'Apply',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 360,
              left: 14,
              child: Row(
                children: [
                  Text(
                    'All Loan services are provided by',
                    style: TextStyle(
                      fontSize: 10,

                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(137, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'BlueRidge Microfinance Bank Ltd.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );

      default:
        return SizedBox.shrink(); // Return an empty widget if no tab is selected
    }
  }
}
