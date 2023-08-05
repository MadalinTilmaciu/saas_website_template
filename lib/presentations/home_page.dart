import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/ilustrations/home_banner.png'),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQ.width / 7,
                  vertical: 48,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/icons/logo.png'),
                          const Text(
                            'SaaS Template',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: mediaQ.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.white12,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Home',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'About',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Features',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Pages',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Blog',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Cart (0)',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 48),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            backgroundColor: Colors.white,
                            fixedSize: Size(mediaQ.width / 12, 60),
                          ),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: mediaQ.height / 5,
                  right: mediaQ.width / 8,
                  left: mediaQ.width / 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: mediaQ.width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Build your',
                            style: TextStyle(
                              fontSize: 72,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const Text(
                            'audience and',
                            style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const Text(
                            'grow your brand',
                            style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            'Lorem ipsum dolor sit amet consectetur adipiscing elit interdum ullamcorper sed pharetra sene.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  backgroundColor: const Color(0xFF5236FF),
                                  fixedSize: Size(mediaQ.width / 12.5, 50),
                                ),
                                child: const Text(
                                  'Get Started',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  backgroundColor: Colors.grey,
                                  fixedSize: Size(mediaQ.width / 12.5, 50),
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text(
                                      'Watch Video',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                        color: Colors.black,
                                      ),
                                      child: const Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/ilustrations/ilustration_7.png',
                      width: mediaQ.width / 2.25,
                      height: mediaQ.height / 1.25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
