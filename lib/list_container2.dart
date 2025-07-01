import 'package:flutter/material.dart';

class ListContainer2 extends StatelessWidget {
  const ListContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 236, 229),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(Icons.casino_outlined, size: 22),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Betting Payment',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/icons/naira_coin.png',
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '+20',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 1, 156, 99),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: RichText(
                    text: TextSpan(
                      text: 'Fund betting account with ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 93, 93, 93),
                      ),

                      children: [
                        TextSpan(
                          text: '₦100',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 1, 156, 99),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    'or more',

                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 93, 93, 93),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 36),
            Container(
              height: 34,
              width: 46,

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
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Text(
                'Go',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
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
                color: const Color.fromARGB(255, 219, 236, 229),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(Icons.casino_outlined, size: 22),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      'Betting payment',

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/icons/naira_coin.png',
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '+60',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 1, 156, 99),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: RichText(
                    text: TextSpan(
                      text: 'Fund betting account with',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 93, 93, 93),
                      ),
                      children: [
                        TextSpan(
                          text: '₦500',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 1, 156, 99),
                          ),
                        ),
                        const WidgetSpan(child: SizedBox(width: 4)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    'or more',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 93, 93, 93),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 36),
            Container(
              height: 34,
              width: 46,

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
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Text(
                'Go',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 45,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 236, 229),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(Icons.casino_outlined, size: 22),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      'Betting payment',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/icons/naira_coin.png',
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '+100',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 1, 156, 99),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Fund betting account with',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 93, 93, 93),
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '₦1,000',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 1, 156, 99),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Text(
                    'or more',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: const Color.fromARGB(255, 93, 93, 93),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 22),
            Container(
              height: 34,
              width: 46,

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
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Text(
                'Go',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Icon(
                weight: 1,
                grade: 1,
                Icons.keyboard_arrow_down_outlined,
                size: 22,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
