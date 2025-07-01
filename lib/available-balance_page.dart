import 'package:flutter/material.dart';

class AvailablebalancePage extends StatefulWidget {
  const AvailablebalancePage({super.key});

  @override
  State<AvailablebalancePage> createState() => _AvailablebalancePageState();
}

class _AvailablebalancePageState extends State<AvailablebalancePage> {
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 900,
              child: Stack(
                children: [
                  Positioned(
                    top: 95,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      padding: const EdgeInsets.only(
                        left: 18,
                        right: 18,
                        top: 14,
                      ),
                      margin: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 188, 235, 218),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account Number',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '9169228793',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black26,
                                size: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          padding: const EdgeInsets.only(
                            left: 18,
                            right: 18,
                            top: 6,
                          ),
                          margin: const EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 1, 156, 99),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Available Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),

                                  IconButton(
                                    style: ButtonStyle(
                                      overlayColor: WidgetStateProperty.all(
                                        Colors.transparent,
                                      ),
                                    ),
                                    padding: const EdgeInsets.only(right: 4),
                                    alignment: Alignment.centerLeft,
                                    onPressed: () {
                                      setState(() {
                                        isvisible = !isvisible;
                                      });
                                    },
                                    icon: Icon(
                                      isvisible
                                          ? Icons.visibility
                                          : Icons.visibility_off_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      isvisible ? '₦' : '',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  Text(
                                    isvisible ? '0.00' : '****',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 230,
                          padding: const EdgeInsets.only(
                            left: 18,
                            right: 18,
                            top: 16,
                          ),
                          margin: const EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(136, 241, 247, 245),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                            255,
                                            221,
                                            227,
                                            225,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.wallet,
                                          color: Color.fromARGB(
                                            255,
                                            1,
                                            156,
                                            99,
                                          ),
                                          size: 18,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'Wallet',
                                        style: TextStyle(
                                          color: Colors.blueGrey[800],
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black45,
                                    size: 12,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Text(
                                isvisible ? '₦0.00' : '****',

                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Dottedline(),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                            255,
                                            221,
                                            227,
                                            225,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                        ),
                                        child: const Icon(
                                          Icons.money_sharp,
                                          color: Color.fromARGB(
                                            255,
                                            1,
                                            156,
                                            99,
                                          ),
                                          size: 18,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'OWealth',
                                        style: TextStyle(
                                          color: Colors.blueGrey[800],
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black45,
                                    size: 12,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Text(
                                isvisible ? '₦0.00' : '****',

                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  right: 8,
                                  top: 4,
                                  bottom: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    197,
                                    242,
                                    226,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'An available balance that pays you interest everyday',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      1,
                                      156,
                                      99,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Dottedline(),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            top: 12,
                          ),
                          margin: const EdgeInsets.only(left: 14, right: 14),
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(136, 241, 247, 245),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                  right: 12,
                                  top: 8,
                                  bottom: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    104,
                                    90,
                                    207,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  'INSURED BY THE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 10,
                                      ),
                                      child: Container(
                                        height: 46,
                                        width: 3,
                                        color: Color.fromARGB(255, 38, 0, 67),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 2,
                                          ),
                                          child: Text(
                                            'NDIC',
                                            style: TextStyle(
                                              height: 0.6,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                              color: Color.fromARGB(
                                                255,
                                                38,
                                                0,
                                                67,
                                              ),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Nigeria Deposit Insurance Corporation',
                                                style: TextStyle(
                                                  fontSize: 6.3,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color.fromARGB(
                                                    255,
                                                    38,
                                                    0,
                                                    67,
                                                  ),
                                                ),
                                              ),

                                              Text(
                                                'Proctecting your deposits',
                                                style: TextStyle(
                                                  fontSize: 5.3,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color.fromARGB(
                                                    255,
                                                    18,
                                                    100,
                                                    188,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 14, right: 14),
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 104, 201, 227),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 38, 0, 67),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'CALL',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'TOLL-FREE',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 8,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '0800-6342-4357',
                                      style: TextStyle(
                                        height: 1,
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'helpdesk@indic.gov.ng/ www.ndic.gov.ng/NDIcNigeria',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 6.4,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/cbn.png',
                                width: 28,
                                height: 28,
                              ),

                              Text(
                                'Licensed by the',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 48, 48, 48),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'CBN',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 38, 0, 67),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'and insure by the',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 48, 48, 48),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Container(
                                height: 20,
                                width: 1,
                                color: Color.fromARGB(255, 38, 0, 67),
                              ),
                              const SizedBox(width: 2),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      'NDIC',
                                      style: TextStyle(
                                        height: 0.6,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromARGB(255, 38, 0, 67),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text(
                                      'Nigeria Deposit Insurance Corporation',
                                      style: TextStyle(
                                        fontSize: 2.2,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromARGB(255, 38, 0, 67),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 520,
                    left: 174,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                        top: 10,
                      ),
                      height: 148,
                      width: 220,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 236, 229),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'OPay Digital service Limited is a member of the NDIC.Eligible deposits taken by   this OPay are protected by NDIC up to ₦5,000,000 per user which is the same     as traditional bank.',

                            style: TextStyle(
                              color: Colors.blueGrey[800],
                              fontSize: 10.9,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Details pls check the links below:',
                            style: TextStyle(
                              color: Colors.blueGrey[800],
                              fontSize: 10.9,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'OPay listed on NDIC website ',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 1, 156, 99),
                              fontSize: 10.9,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.solid,

                              decorationColor: const Color.fromARGB(
                                255,
                                1,
                                156,
                                99,
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              scrolledUnderElevation: 0,
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
                    'Available Balance Details',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dottedline extends StatelessWidget {
  final double height;
  final Color color;
  const Dottedline({
    super.key,
    this.height = 1,
    this.color = const Color.fromARGB(71, 138, 138, 138),
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final dashWidth = 4.0;
        final dashHeight = height;
        final dashCount = (width / (2 * dashWidth)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(dashCount, (index) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(decoration: BoxDecoration(color: color)),
            );
          }),
        );
      },
    );
  }
}
