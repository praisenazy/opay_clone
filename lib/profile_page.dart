import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isVisible = true;
  bool showAppBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.direction == ScrollDirection.forward) {
                setState(() {
                  showAppBar = false;
                });
              } else if (notification.direction == ScrollDirection.reverse) {
                setState(() {
                  showAppBar = true;
                });
              }
              return true;
            },
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Container(
                margin: const EdgeInsets.only(bottom: 6),
                height: 1000,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 265,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(251, 207, 237, 236),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22),
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                              left: 20,
                              right: 20,
                            ),
                            child: SafeArea(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          500,
                                        ),
                                        child: Image.asset(
                                          'assets/icons/opaylogo.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hi,CHINAZA',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),

                                          Container(
                                            padding: const EdgeInsets.only(
                                              right: 8,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                208,
                                                255,
                                                242,
                                                208,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),

                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/icons/first-prize.png',
                                                  width: 20,
                                                  height: 20,
                                                  color: Color.fromARGB(
                                                    187,
                                                    156,
                                                    112,
                                                    1,
                                                  ),
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  'Tier 1',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                      187,
                                                      156,
                                                      112,
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 160),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10.0,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/icons/noun-setting.svg',
                                          width: 45,
                                          height: 45,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Total Balance',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      IconButton(
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                          });
                                        },
                                        icon: Icon(
                                          isVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off_outlined,
                                          size: 18,
                                          color: const Color.fromARGB(
                                            180,
                                            0,
                                            0,
                                            0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 2.0,
                                        ),
                                        child: Text(
                                          textWidthBasis:
                                              TextWidthBasis.longestLine,
                                          isVisible ? '₦ ' : '',

                                          style: TextStyle(
                                            fontSize: 24,
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
                                          fontSize: 34,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      isVisible
                                          ? Text(
                                            '.00',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                          : Text(
                                            '****',
                                            style: TextStyle(
                                              fontSize: 34,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 720,
                      left: 0,
                      right: 0,
                      top: 214,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 16),
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 10,
                            top: 10,
                          ),
                          height: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(251, 102, 199, 152),
                                Color.fromARGB(255, 13, 196, 153),
                                Color.fromARGB(255, 69, 181, 151),
                                Color.fromARGB(255, 50, 217, 153),
                              ],

                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        elevation: 5.4,
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          'assets/icons/error.png',
                                          width: 16,
                                          height: 16,
                                          color: Colors.red,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        '7 Safety Tips',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Make your account more secure.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 60),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Container(
                                  height: 34,
                                  width: 76,

                                  alignment: Alignment.center,

                                  decoration: BoxDecoration(
                                    color: Colors.white,

                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),

                                  child: Text(
                                    'View',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Color.fromARGB(255, 38, 176, 140),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 426,
                      left: 0,
                      right: 0,
                      top: 292,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 16),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 24,
                            top: 26,
                          ),
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(245, 233, 244, 240),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/clipboard.svg',
                                    width: 30,
                                    height: 30,
                                    // ignore: deprecated_member_use
                                    color: Color.fromARGB(255, 38, 176, 140),
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'Transaction History',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 132),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Image.asset(
                                      'assets/icons/Speedometer-02.png',
                                      width: 26,
                                      height: 26,
                                      color: Color.fromARGB(255, 38, 176, 140),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        'Account Limits',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),

                                      Text(
                                        'View your transaction limits',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                            255,
                                            160,
                                            159,
                                            159,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 120),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Image.asset(
                                      'assets/icons/new-card.png',
                                      width: 26,
                                      height: 26,
                                      color: Color.fromARGB(255, 38, 176, 140),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        'Bank Card/Account',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),

                                      Text(
                                        'Add payment option',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                            255,
                                            160,
                                            159,
                                            159,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 130),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Image.asset(
                                      'assets/icons/shop-house.png',
                                      width: 24,
                                      height: 24,
                                      color: Color.fromARGB(255, 38, 176, 140),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        'Transfer to Me',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),

                                      Text(
                                        'Recieve payment for your business',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                            255,
                                            160,
                                            159,
                                            159,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 80),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      left: 0,
                      right: 0,
                      top: 585,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 18, right: 16),
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 24,
                            top: 24,
                          ),
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(245, 233, 244, 240),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/icons/shied.png',
                                    width: 26,
                                    height: 26,
                                    color: Color.fromARGB(255, 38, 176, 140),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        'Security Center',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),

                                      Text(
                                        'Protect your funds',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                            255,
                                            160,
                                            159,
                                            159,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 160),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Icon(
                                    Icons.support_agent_outlined,
                                    size: 26,
                                    color: Color.fromARGB(255, 38, 176, 140),
                                  ),

                                  const SizedBox(width: 16),
                                  Text(
                                    'Customer Service Center',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                  const SizedBox(width: 90),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Image.asset(
                                      'assets/icons/victory.png',
                                      width: 30,
                                      height: 30,
                                      color: Color.fromARGB(255, 38, 176, 140),
                                    ),
                                  ),
                                  const SizedBox(width: 14),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        textHeightBehavior: TextHeightBehavior(
                                          applyHeightToLastDescent: false,
                                        ),
                                        'Invitation',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),

                                      Text(
                                        'Invite friends and earn up to ₦5,600 Bonus',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                            255,
                                            160,
                                            159,
                                            159,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 35),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Image.asset(
                                    'assets/icons/contact-us.png',
                                    width: 24,
                                    height: 24,
                                    color: Color.fromARGB(255, 38, 176, 140),
                                  ),
                                  const SizedBox(width: 18),
                                  Text(
                                    'OPay USSD',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                  const SizedBox(width: 192),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/icons/star-icon.png',
                                    width: 24,
                                    height: 24,
                                    color: Color.fromARGB(255, 38, 176, 140),
                                  ),
                                  const SizedBox(width: 17),
                                  Text(
                                    'Rate US',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(width: 216),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: const Color.fromARGB(
                                        255,
                                        125,
                                        125,
                                        125,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      right: 0,
                      top: 920,
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
            ),
          ),
          AnimatedPositioned(
            top: showAppBar ? 0 : -100,
            left: 0,
            right: 0,
            duration: Duration(milliseconds: 200),
            child: Container(
              padding: const EdgeInsets.only(left: 17, right: 16, top: 18),
              height: 90,
              color: Color.fromARGB(251, 207, 237, 236),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(500),
                    child: Image.asset(
                      'assets/icons/opaylogo.png',
                      width: 34,
                      height: 34,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'CHINAZA',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 212),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: SvgPicture.asset(
                      'assets/icons/noun-setting.svg',
                      width: 45,
                      height: 45,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
