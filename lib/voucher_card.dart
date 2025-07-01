import 'package:flutter/material.dart';

class VoucherCard extends StatelessWidget {
  const VoucherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(133, 156, 236, 231),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 150,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback:
                (bounds) => const LinearGradient(
                  colors: [
                    Color.fromARGB(251, 107, 227, 246),
                    Color.fromARGB(103, 2, 195, 124),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
            child: Text(
              '₦300',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),

          Text(
            'Airtime Voucher',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          Dottedline(),

          const SizedBox(height: 10),
          Text(
            '₦300 avaliable',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 28,
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
              'Use',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
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
    this.height = 2,
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
