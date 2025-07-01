import 'package:flutter/material.dart';

class AddMoneyPage extends StatelessWidget {
  const AddMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 50,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 241, 247, 245),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: const Text(
              'Add Money',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 14,
                  right: 20,
                  bottom: 16,
                ),
                margin: const EdgeInsets.only(top: 20, left: 14, right: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 236, 229),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.account_balance_outlined,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Bank Transfer',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Add money via mobile or internet banking',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 70,
                    child: Divider(height: 1, color: Colors.black12),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 70,
                    child: Divider(height: 1, color: Colors.black12),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 80,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 14,
                  right: 20,
                  bottom: 16,
                ),
                margin: const EdgeInsets.only(left: 14, right: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 236, 229),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 6, right: 6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(4),
                        ),

                        child: Text(
                          '₦',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 1, 156, 99),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Cash Deposit',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Fund your account with nearly merchants',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 80,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 14,
                  right: 20,
                  bottom: 16,
                ),
                margin: const EdgeInsets.only(left: 14, right: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 236, 229),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.credit_card_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Top-up with Card/Account',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Add money directly from yourbank card',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              'or account',
                              style: TextStyle(
                                height: 0.9,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 80,
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 14,
                  right: 20,
                  bottom: 16,
                ),
                margin: const EdgeInsets.only(left: 14, right: 14),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 247, 245),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 11),
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 236, 229),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.8,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 3),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3),
                          Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.8,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 3),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      color: Color.fromARGB(255, 1, 156, 99),
                                      width: 1.8,
                                    ),
                                    left: BorderSide(
                                      color: Color.fromARGB(255, 1, 156, 99),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Cash Deposit',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Show QR code to any OPay user',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
