// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:online_banking_app/add_money_page.dart';
import 'package:online_banking_app/additional_list.dart';
import 'package:online_banking_app/available-balance_page.dart';
import 'package:online_banking_app/grid_item.dart';
import 'package:online_banking_app/notification_page.dart';
import 'package:online_banking_app/to_bank_page.dart';
import 'package:online_banking_app/to_pay_page.dart';
import 'my_profile_page.dart';
import 'customer_service_page.dart';
import 'package:online_banking_app/transaction_history_page.dart';

class GridDetails extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  const GridDetails({super.key, required this.items});

  @override
  State<GridDetails> createState() => _GridDetailsState();
}

class _GridDetailsState extends State<GridDetails> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        actionsPadding: EdgeInsets.only(right: 12.0, left: 12.0, bottom: 10.0),
        toolbarHeight: 90,
        backgroundColor: Color.fromARGB(255, 219, 236, 229),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProfilePage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.asset(
                        opacity: const AlwaysStoppedAnimation(0.6),
                        'assets/icons/opaylogo.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      'Hi,CHINAZA ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 120.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerServicePage(),
                    ),
                  );
                },
                child: Icon(
                  Icons.headset_mic_outlined,
                  color: const Color.fromARGB(206, 0, 0, 0),
                  size: 20,
                ),
              ),
              const SizedBox(width: 20.0),
              Image.asset(
                'assets/icons/scanner.png',
                height: 20,
                width: 20,
                color: Colors.black,
              ),

              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                },
                child: Icon(
                  Icons.notifications_outlined,
                  color: const Color.fromARGB(206, 0, 0, 0),
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: SizedBox(
          height: 720,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 100,
                width: 400,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 1, 156, 99),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 4.50,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 0.0,
                  ),
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    var item = widget.items[index];
                    if (item['type'] == "text") {
                      return TextButton.icon(
                        onPressed: () => print('${item['label']} pressed'),

                        style: ButtonStyle(
                          overlayColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.only(left: 12, right: 12),
                          ),
                          alignment: Alignment.centerRight,
                        ),
                        label: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const AvailablebalancePage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(item['icon'], color: Colors.white),

                                  Text(
                                    textAlign: TextAlign.start,
                                    item['label'],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: IconButton(
                                alignment: Alignment.centerRight,

                                padding: const EdgeInsets.only(right: 4),
                                icon: Icon(
                                  isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                style: ButtonStyle(
                                  overlayColor: WidgetStateProperty.all(
                                    Colors.transparent,
                                  ),
                                ),

                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    } else if (item['type'] == "TextButton") {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton.icon(
                            iconAlignment: IconAlignment.end,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          const TransactionHistoryPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              item['icon'],
                              color: Colors.white,
                              size: 10,
                            ),
                            label: Text(
                              item['label'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                            style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                              padding: WidgetStateProperty.all(
                                const EdgeInsets.only(right: 12),
                              ),
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      );
                    } else if (item['type'] == "balance") {
                      return TextButton.icon(
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.only(left: 12),
                          ),
                          overlayColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                          alignment: Alignment.centerLeft,
                        ),

                        iconAlignment: IconAlignment.end,
                        onPressed: () => print('${item['label']} pressed'),

                        label: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => const AvailablebalancePage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                textHeightBehavior: TextHeightBehavior(
                                  applyHeightToLastDescent: false,
                                ),
                                isVisible ? '₦' : '',

                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              isVisible
                                  ? Text(
                                    item['label'],

                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                  : Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                    child: const Text(
                                      '****',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                              const SizedBox(width: 3.0),
                              Icon(
                                item['icon'],
                                color: Colors.white,
                                size: 14.0,
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (item['type'] == "Button") {
                      return IntrinsicWidth(
                        child: Container(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            left: 70.0,
                            top: 5.0,
                            bottom: 5.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: TextButton.icon(
                            style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                              padding: WidgetStateProperty.all(
                                const EdgeInsets.only(right: 12),
                              ),
                              alignment: Alignment.centerRight,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: WidgetStateProperty.all(
                                Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddMoneyPage(),
                                ),
                              );
                            },

                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  item['icon'],
                                  color: Color.fromARGB(255, 1, 156, 99),
                                  size: 12,
                                ),
                                const SizedBox(width: 3.0),
                                Text(
                                  item['label'],
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 1, 156, 99),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                constraints: BoxConstraints(
                  maxHeight: 85,
                  minHeight: 85,
                  maxWidth: 400,
                  minWidth: 400,
                ),
                padding: const EdgeInsets.only(top: 14.0),

                decoration: BoxDecoration(
                  color: Color.fromARGB(228, 226, 245, 239),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ToPayPage(),
                          ),
                        );
                      },
                      child: AdditionalList(
                        icon: Icons.account_box_rounded,
                        label: 'To Opay',
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ToBankPage(),
                          ),
                        );
                      },
                      child: AdditionalList(
                        icon: Icons.account_balance,
                        label: 'To Bank',
                      ),
                    ),
                    AdditionalList(
                      icon: Icons.account_balance_wallet_sharp,
                      label: 'Withdraw',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                constraints: BoxConstraints(
                  maxHeight: 200,
                  minHeight: 200,
                  maxWidth: 400,
                  minWidth: 400,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(228, 226, 245, 239),
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: const EdgeInsets.only(top: 14.0),
                child: GridItem(),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
