import 'package:flutter/material.dart';
import 'package:online_banking_app/customer_service_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerServicePage extends StatefulWidget {
  const CustomerServicePage({super.key});

  @override
  State<CustomerServicePage> createState() => _CustomerServicePageState();
}

class _CustomerServicePageState extends State<CustomerServicePage>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              scrolledUnderElevation: 0,
              pinned: true,
              backgroundColor: Colors.teal[100],
              leading: IconButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new, size: 20),
              ),

              flexibleSpace: FlexibleSpaceBar(
                title: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60, top: 40),
                    child: const Text(
                      'Customer Service Center',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: 800,
            child: Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.teal[100]!,
                                const Color.fromARGB(255, 219, 236, 229),
                              ],
                              stops: const [0.5, 1],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AnimatedBuilder(
                                  animation: _animation,
                                  builder: (context, child) {
                                    return Transform.translate(
                                      offset: Offset(0, -_animation.value),
                                      child: child!,
                                    );
                                  },
                                  child: Image.asset(
                                    alignment: Alignment.centerLeft,
                                    'assets/icons/robot.png',
                                    width: 104,
                                  ),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    const Text(
                                      textHeightBehavior: TextHeightBehavior(
                                        applyHeightToLastDescent: false,
                                      ),
                                      'Hello~CHINAZA PRAISE',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    const Text(
                                      textHeightBehavior: TextHeightBehavior(
                                        applyHeightToLastDescent: false,
                                      ),
                                      'ANYIGOR',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Text(
                                      textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false,
                                      ),
                                      'How can we help you?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),
                          top: 28,

                          left: isExpanded ? 200 : 350,
                          width: isExpanded ? 300 : 70,
                          height: 40,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              height: 80,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                  ),
                                ],
                                borderRadius:
                                    isExpanded
                                        ? BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                        )
                                        : BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                        ),
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  isExpanded
                                      ? Container(
                                        padding: const EdgeInsets.all(3),
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                              255,
                                              68,
                                              202,
                                              137,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.phone_forwarded,
                                            size: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                      : Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            68,
                                            202,
                                            137,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.phone_forwarded,
                                          size: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                  isExpanded
                                      ? SizedBox(width: 8)
                                      : SizedBox(width: 6),
                                  if (isExpanded)
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'AVG.Response time:2Min',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                              255,
                                              68,
                                              202,
                                              137,
                                            ),
                                          ),
                                        ),

                                        Text(
                                          'live chat Faster replies',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  isExpanded
                                      ? SizedBox(width: 18)
                                      : SizedBox(width: 0),
                                  Icon(
                                    isExpanded
                                        ? Icons.keyboard_double_arrow_right
                                        : Icons.keyboard_double_arrow_left,
                                    size: isExpanded ? 20 : 18,
                                    color: const Color.fromARGB(
                                      255,
                                      68,
                                      202,
                                      137,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 120,
                  bottom: 430,
                  left: 0,
                  right: 0,

                  child: Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(left: 16.0, right: 16.0),

                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 247, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: CustomerServiceList(),
                  ),
                ),
                Positioned(
                  top: 384,
                  bottom: 280,
                  left: 0,
                  right: 0,

                  child: Container(
                    margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 247, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'My Feedback',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  height: 3,
                                  width: 40,
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 79, 212, 245),
                                        const Color.fromARGB(255, 4, 194, 127),
                                      ],
                                      stops: const [0.5, 1],
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'More',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: const Color.fromARGB(
                                      255,
                                      143,
                                      143,
                                      143,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: const Color.fromARGB(
                                    255,
                                    143,
                                    143,
                                    143,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Container(
                          alignment: Alignment.center,

                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 219, 236, 229),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'No order record for the last 90 days',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 143, 143, 143),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 534,
                  left: 0,
                  right: 0,
                  bottom: 164,

                  child: Container(
                    margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 247, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 45,
                            width: 45,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 221, 235, 234),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Icon(
                              Icons.verified_user_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Security Center',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Tap to report a scam or restrict',

                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(255, 96, 96, 96),
                              ),
                            ),
                            Text(
                              'your account',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(255, 99, 99, 99),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: const Color.fromARGB(255, 140, 139, 139),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 650,
                  left: 0,
                  right: 0,
                  bottom: 56,

                  child: Container(
                    margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 241, 247, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 45,
                            width: 45,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 221, 235, 234),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Office Address',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Customer Service Center Address',

                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(255, 96, 96, 96),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: const Color.fromARGB(255, 140, 139, 139),
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
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 219, 236, 229),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              padding: const EdgeInsets.only(top: 2),
              height: 60,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 156, 99),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SvgPicture.asset(
                        'assets/icons/live-chat.svg',
                        width: 34,
                        height: 34,
                      ),
                      Text(
                        'Live Chat',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'AVG.Response time:1.2min',
                    style: TextStyle(
                      height: 1,

                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(196, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
