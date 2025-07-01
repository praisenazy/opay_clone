import 'package:flutter/material.dart';

class ToPayPage extends StatefulWidget {
  const ToPayPage({super.key});

  @override
  State<ToPayPage> createState() => _ToPayPageState();
}

class _ToPayPageState extends State<ToPayPage> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController controller = TextEditingController();
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      {
        setState(() {});
      }
    });
    focusNode.addListener(() {
      if (!focusNode.hasFocus && controller.text.isNotEmpty) {
        setState(() {
          errorMessage = null;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  bool isValidInput(String input) {
    final regex = RegExp(r'^\d{10}$');
    return regex.hasMatch(input);
  }

  void onInputChanged(String input) {
    setState(() {
      if (input.isEmpty) {
        errorMessage = null;
      } else {
        errorMessage =
            isValidInput(input)
                ? null
                : 'No result found. Enter the recipient\'s phone number or OPay Account number to transfer money instantly.';
      }
    });
  }

  void clearInput() {
    setState(() {
      controller.clear();
      errorMessage = null;
    });
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
                padding: const EdgeInsets.only(left: 30),
                child: const Text(
                  'Transfer To OPay Account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Text(
              'History',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: const Color.fromARGB(255, 1, 156, 99),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 14, right: 14),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 188, 235, 218),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 1, 156, 99),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Text(
                    '₦',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                const Text(
                  'Instant, Zero Issues, Free',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 1, 156, 99),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.only(left: 14, right: 14),
            padding: EdgeInsets.only(left: 18, right: 18, top: 20),
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 247, 245),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipient Account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  focusNode: focusNode,
                  controller: controller,
                  onChanged: onInputChanged,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Phone No./OPay Account No./Name',
                    hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                    filled: true,
                    fillColor: Color.fromARGB(228, 226, 245, 239),
                    suffixIcon:
                        controller.text.isNotEmpty
                            ? IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: Colors.grey,
                                size: 20,
                              ),
                              onPressed: clearInput,
                            )
                            : Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                top: 15,
                                bottom: 15,
                              ),
                              child: Image.asset(
                                'assets/icons/scanner.png',
                                height: 10,
                                width: 10,
                                color: Colors.grey,
                              ),
                            ),
                    contentPadding: const EdgeInsets.only(
                      top: 10,
                      left: 14,

                      bottom: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 1, 156, 99),
                        width: 0.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                if (errorMessage != null)
                  Text(
                    errorMessage!,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  )
                else
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Don\'t know the recipient\'s Opay account number?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        'Ask Them >',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 1, 156, 99),
                        ),
                      ),
                    ],
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
                  height: 43,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 236, 229),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.groups_3,
                    size: 30,
                    color: Color.fromARGB(255, 1, 156, 99),
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'See who else is using OPay',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Send money to your contacts for free',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black26),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
