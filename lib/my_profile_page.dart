import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

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
              'My Profile',
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
        child: SizedBox(
          height: 900,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 14, right: 14),
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 16,
                    bottom: 4,
                  ),
                  height: 84,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 247, 245),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Row(
                    children: [
                      ShaderMask(
                        shaderCallback:
                            (bounds) => const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 173, 127, 237),
                                Color.fromARGB(255, 61, 2, 155),
                              ],

                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds),
                        blendMode: BlendMode.srcIn,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'assets/icons/envelope.png',
                            width: 40,
                            height: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Take Control, Stay Informed',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),

                          const Text(
                            'Add your email to get the latest from OPay',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 119, 119, 119),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: 4,
                  ),
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 247, 245),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 34,
                            backgroundColor: Colors.grey[200],
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Colors.grey[400],
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            child: Container(
                              width: 66,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(137, 97, 97, 97),
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(500),
                                ),
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'CHINAZA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Opay Account Number',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Text(
                                  '9169228793',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                SizedBox(width: 2),
                                Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(3.14),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Icon(
                                      Icons.copy,
                                      color: Colors.grey[600],
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Account Tier',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(208, 255, 242, 208),
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/first-prize.png',
                                      width: 20,
                                      height: 20,
                                      color: Color.fromARGB(187, 156, 112, 1),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Tier 1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(187, 156, 112, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 74,
                                height: 22,
                                padding: const EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    68,
                                    255,
                                    128,
                                    170,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Upgrade',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pink,
                                      ),
                                    ),
                                    const SizedBox(width: 2),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.pink,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Container(
                  height: 400,
                  padding: const EdgeInsets.only(top: 20, left: 16, bottom: 18),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 241, 247, 245),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Full Name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Row(
                              children: [
                                Text(
                                  'CHINAZA PRAISE ANYIGOR',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                '+2349169228793',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Transform(
                                  alignment: Alignment.centerLeft,
                                  transform: Matrix4.rotationY(3.14),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.grey[600],
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nickname',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                'Enter nickname',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[500],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Transform(
                                  alignment: Alignment.centerLeft,
                                  transform: Matrix4.rotationY(3.14),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.grey[600],
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gender',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date of birth',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              '**-**-22',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                'Enter Email',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[500],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 14),
                                child: Transform(
                                  alignment: Alignment.centerLeft,
                                  transform: Matrix4.rotationY(3.14),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.grey[600],
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 34),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Transform(
                              alignment: Alignment.centerLeft,
                              transform: Matrix4.rotationY(3.14),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.grey[600],
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
