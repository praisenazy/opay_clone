import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  bool isChecked = false;
  int selectedIndex = 0;
  final List<String> tabs = ['Virtual Card', 'Physical Card'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
        child: Scaffold(
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'OPay Cards',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Q&A',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 1, 156, 99),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
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
                          padding: const EdgeInsets.only(right: 20, left: 10),
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
                                        ? const Color.fromARGB(134, 0, 0, 0)
                                        : Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),

                  Expanded(child: buildContect()),
                ],
              ),

              Positioned(
                top: 614,

                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 2, top: 30, bottom: 10),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 236, 229),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.scale(
                            alignment: Alignment.topRight,
                            scale: 0.7,
                            child: Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                              side: BorderSide(color: Colors.grey, width: 1),
                              focusColor: Color.fromARGB(255, 1, 156, 99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
                              ),
                              checkColor: Colors.white,
                              activeColor: Color.fromARGB(255, 1, 156, 99),
                            ),
                          ),
                          SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    textHeightBehavior: TextHeightBehavior(
                                      applyHeightToLastDescent: false,
                                    ),
                                    'Click the button below to accept ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: const Color.fromARGB(144, 0, 0, 0),
                                    ),
                                  ),

                                  Text(
                                    'Terms &  ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 1, 156, 99),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                textHeightBehavior: TextHeightBehavior(
                                  applyHeightToLastDescent: false,
                                  applyHeightToFirstAscent: false,
                                ),
                                'Conditions',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 1, 156, 99),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, right: 24),
                          child: Container(
                            height: 60,
                            width: double.infinity,

                            alignment: Alignment.center,

                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 1, 156, 99),
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),

                            child: Text(
                              'Get It Now',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContect() {
    switch (selectedIndex) {
      case 0:
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Padding(
            padding: const EdgeInsets.only(bottom: 185),
            child: Container(
              constraints: BoxConstraints(minHeight: 620),

              padding: const EdgeInsets.only(top: 14, left: 26, right: 26),
              alignment: Alignment.topCenter,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color.fromARGB(228, 226, 245, 239),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/icons/virture card.png'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 45,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(176, 199, 226, 215),
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: Image.asset(
                          'assets/icons/power.png',
                          height: 20,
                          width: 20,
                          color: Color.fromARGB(255, 1, 156, 99),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Instant Access',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'Apply and activate ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Instantly',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 1, 156, 99),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 45,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(176, 199, 226, 215),
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: Image.asset(
                          'assets/icons/map.png',
                          height: 20,
                          width: 20,
                          color: Color.fromARGB(255, 1, 156, 99),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rep Your State Of Origin',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Column(
                            children: [
                              Text(
                                'Get a virtual OPay card unigue to',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 1, 156, 99),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'your state of origin',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 1, 156, 99),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 45,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(176, 199, 226, 215),
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: Image.asset(
                          'assets/icons/global.png',
                          height: 20,
                          width: 20,
                          color: Color.fromARGB(255, 1, 156, 99),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Online Merchant Acceptance',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'Accepted by',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 4),

                              Text(
                                '40,000+',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 1, 156, 99),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'merchants including JUMIA, KONGA,',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'NETFLIX, UBER Wallet Funding and',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'others',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 45,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(176, 199, 226, 215),
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: Image.asset(
                          'assets/icons/shied.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Security',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                'CBN',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 1, 156, 99),
                                ),
                              ),
                              SizedBox(width: 4),

                              Text(
                                'licensed,',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'NDIC',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 1, 156, 99),
                                ),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Insured',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      case 1:
        return Padding(
          padding: const EdgeInsets.only(bottom: 235),
          child: Container(
            constraints: BoxConstraints(minHeight: 400),

            padding: const EdgeInsets.only(top: 14, left: 26, right: 26),
            alignment: Alignment.topCenter,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color.fromARGB(228, 226, 245, 239),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/icons/physical card.png'),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(176, 199, 226, 215),
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: Image.asset(
                        'assets/icons/cds2.png',
                        height: 20,
                        width: 20,
                        color: Color.fromARGB(255, 1, 156, 99),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free Application and Usage ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'Free ',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 1, 156, 99),
                              ),
                            ),
                            Text(
                              'application,',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Zero ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 1, 156, 99),
                              ),
                            ),
                            Text(
                              'maintenance ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(176, 199, 226, 215),
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: Image.asset(
                        'assets/icons/bag.png',
                        height: 20,
                        width: 20,
                        color: Color.fromARGB(255, 1, 156, 99),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Earn',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Flexible Spending with ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '15%',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 1, 156, 99),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          'annual interest ',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(176, 199, 226, 215),
                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: Image.asset(
                        'assets/icons/shied.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Security',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              'CBN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 1, 156, 99),
                              ),
                            ),
                            SizedBox(width: 4),

                            Text(
                              'licensed,',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'NDIC',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 1, 156, 99),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Insured',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      default:
        return Center(
          child: Text(
            'No content available',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        );
    }
  }
}
