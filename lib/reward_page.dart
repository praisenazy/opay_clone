import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:online_banking_app/list_container.dart';
import 'package:online_banking_app/list_container2.dart';
import 'package:online_banking_app/voucher_card.dart';
import 'package:online_banking_app/voucher_card2.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          actionsPadding: const EdgeInsets.only(right: 12.0),
          backgroundColor: const Color.fromARGB(134, 131, 222, 218),
          toolbarHeight: 40,
          title: Text(
            'Rewards',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(MdiIcons.dotsHorizontalCircleOutline),
              onPressed: () {},
            ),
          ],
        ),
        // ignore: sized_box_for_whitespace
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            height: 1600,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(134, 131, 222, 218),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.zero,
                              child: Text(
                                'Cashback',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: const Color.fromARGB(150, 0, 0, 0),
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.help_outline,
                              color: const Color.fromARGB(115, 0, 0, 0),
                              size: 12,
                            ),
                            const SizedBox(width: 180),
                            Text(
                              'Voucher',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(150, 0, 0, 0),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 6,
                                right: 6,

                                bottom: 2,
                              ),
                              alignment: Alignment.center,

                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(226, 36, 255, 237),
                                    Color.fromARGB(255, 2, 175, 112),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                ),
                              ),
                              child: Text(
                                '₦50',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/naira_coin.png',
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '₦0.00',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color.fromARGB(160, 0, 0, 0),
                              size: 14,
                            ),
                            const SizedBox(width: 140),
                            Image.asset(
                              'assets/icons/coupon.png',
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '0',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color.fromARGB(160, 0, 0, 0),
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Positioned(
                  right: 12,
                  left: 12,
                  top: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                          width: 100,
                          height: 100,
                        ),
                        child: Card(
                          elevation: 0,
                          color: Color.fromARGB(228, 226, 245, 239),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    98,
                                    179,
                                    223,
                                    253,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset(
                                  'assets/icons/carlender.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Check in',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                          width: 95,
                          height: 95,
                        ),
                        child: Card(
                          elevation: 0,
                          color: Color.fromARGB(228, 226, 245, 239),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    95,
                                    240,
                                    227,
                                    163,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset(
                                  'assets/icons/smiling.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Refer Friend',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                          width: 95,
                          height: 95,
                        ),
                        child: Card(
                          elevation: 0,
                          color: Color.fromARGB(228, 226, 245, 239),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    95,
                                    161,
                                    244,
                                    255,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset(
                                  'assets/icons/wheel.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Spin & Win',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                          width: 95,
                          height: 95,
                        ),
                        child: Card(
                          elevation: 0,
                          color: Color.fromARGB(228, 226, 245, 239),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(97, 254, 235, 93),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Image.asset(
                                  'assets/icons/star.png',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                ' Play4aChild',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  left: 30,
                  top: 200,
                  child: Row(
                    children: [
                      Text(
                        'Welcome Bonus',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 8,
                          right: 8,
                          bottom: 2,
                        ),
                        alignment: Alignment.center,

                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(226, 36, 255, 237),
                              Color.fromARGB(255, 2, 175, 112),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                        ),

                        child: Text(
                          'Total ₦500 Bonus',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  right: 16,
                  left: 16,
                  top: 235,
                  child: Container(
                    padding: EdgeInsets.only(
                      right: 14,
                      left: 14,
                      top: 20,
                      bottom: 10,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(228, 226, 245, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListContainer(),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 580,
                  child: Row(
                    children: [
                      Text(
                        'Hot Voucher',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 4),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color.fromARGB(226, 36, 255, 237),
                              Color.fromARGB(255, 2, 175, 112),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },

                        child: Image.asset(
                          "assets/icons/coupon.png",
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 16,
                  left: 16,
                  top: 610,
                  child: Container(
                    height: 270,
                    padding: EdgeInsets.only(right: 12, left: 14, bottom: 10),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(228, 226, 245, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelPadding: EdgeInsets.only(right: 20),
                          indicatorWeight: 0,

                          labelColor: Colors.black,

                          indicatorColor: Colors.transparent,

                          indicator: UnderlineTabIndicator(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 2, 160, 83),
                              width: 4,
                            ),
                            insets: const EdgeInsets.only(left: 12, right: 12),
                          ),

                          tabs: [
                            Tab(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  'Airtime',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          dividerColor: Colors.transparent,
                          dividerHeight: 0,
                        ),
                        const SizedBox(height: 12),
                        const Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [VoucherCard()],
                              ),
                            ],
                          ),
                        ),

                        TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'View My Vouchers',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                weight: 1,
                                grade: 1,
                                Icons.keyboard_arrow_right_outlined,
                                size: 22,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 30,
                  top: 890,
                  child: Row(
                    children: [
                      Text(
                        'Recommend Data Offers',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GradientIcon(
                          icon: Icons.bolt,
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(225, 238, 235, 16),
                              Color.fromARGB(255, 184, 117, 1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      SizedBox(width: 120),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rules',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(207, 31, 31, 31),
                              ),
                            ),
                            Icon(
                              weight: 1,
                              grade: 1,
                              Icons.keyboard_arrow_right_outlined,
                              size: 16,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  right: 16,
                  left: 16,
                  top: 940,
                  child: Container(
                    height: 210,
                    padding: EdgeInsets.only(right: 12, left: 14, bottom: 10),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(228, 226, 245, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelPadding: EdgeInsets.only(right: 20),
                          indicatorWeight: 0,

                          labelColor: Colors.black,

                          indicatorColor: Colors.transparent,

                          indicator: UnderlineTabIndicator(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 2, 160, 83),
                              width: 4,
                            ),
                            insets: const EdgeInsets.only(left: 12, right: 12),
                          ),

                          tabs: [
                            Tab(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  'Airtime',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                          dividerColor: Colors.transparent,
                          dividerHeight: 0,
                        ),
                        const SizedBox(height: 12),
                        const Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [VoucherCard2()],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 1170,
                  child: Text(
                    'Daily Bonus',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 1210,
                  child: Container(
                    padding: EdgeInsets.only(
                      right: 14,
                      left: 14,
                      top: 20,
                      bottom: 5,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(228, 226, 245, 239),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListContainer2(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
