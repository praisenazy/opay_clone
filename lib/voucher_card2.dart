import 'package:flutter/material.dart';

class VoucherCard2 extends StatefulWidget {
  const VoucherCard2({super.key});

  @override
  State<VoucherCard2> createState() => _VoucherCard2State();
}

class _VoucherCard2State extends State<VoucherCard2> {
  int selectedIndex = -1;
  final List<String> labels = ['08:30', '19:30'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: List.generate(labels.length, (index) {
                final isSelected = selectedIndex == index;
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 6),
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color:
                        isSelected
                            ? const Color.fromARGB(22, 3, 100, 55)
                            : const Color.fromARGB(255, 219, 236, 229),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Text(
                      labels[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color:
                            isSelected
                                ? const Color.fromARGB(255, 2, 148, 70)
                                : const Color.fromARGB(86, 0, 0, 0),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(width: 105),
            Text(
              'Event already Ended',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(133, 156, 236, 231),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 4, left: 4, bottom: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(79, 36, 199, 188),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  '99% OFF',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image.asset('assets/icons/mtn.png', height: 40, width: 40),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Buy ₦100 Airtime, pay ₦1',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            Container(
                              height: 6,
                              width: 52,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 156, 210, 205),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '10000',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 1, 169, 119),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Text(
                              '₦1',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 1, 169, 119),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '₦100',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 30,
                      width: 80,

                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(161, 7, 207, 170),
                            Color.fromARGB(131, 163, 233, 227),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                      child: Text(
                        'Reminded',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
