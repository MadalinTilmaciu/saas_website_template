import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/article_card.dart';
import '../widgets/feature_card.dart';
import '../widgets/price_plan_card.dart';
import '../widgets/testimonial_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return Material(
      child: SingleChildScrollView(
        child: ColoredBox(
          color: const Color(0xFFF9F9F9),
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
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: <Widget>[
                                Image.asset('assets/icons/logo.png'),
                                const SizedBox(width: 4),
                                Text(
                                  'SaaSup',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
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
                                    child: Text(
                                      'Home',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'About',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Features',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Pricing',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Blog',
                                      style: GoogleFonts.nunito(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Cart (0)',
                                      style: GoogleFonts.nunito(
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
                                backgroundColor: const Color(0xFFFFFFFF),
                                fixedSize: Size(mediaQ.width / 12, 60),
                              ),
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.nunito(
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
                      top: mediaQ.height / 8,
                      right: mediaQ.width / 8.5,
                      left: mediaQ.width / 6.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: mediaQ.width / 3.75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Build your',
                                style: GoogleFonts.nunito(
                                    fontSize: 64,
                                    fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    height: 1),
                              ),
                              Text(
                                'audience and',
                                style: GoogleFonts.nunito(
                                    fontSize: 64,
                                    fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    height: 1),
                              ),
                              Text(
                                'grow your brand',
                                style: GoogleFonts.nunito(
                                    fontSize: 64,
                                    fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    height: 1),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Lorem ipsum dolor sit amet consectetur adipiscing elit interdum ullamcorper sed pharetra sene.',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
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
                                    child: Text(
                                      'Get Started',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
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
                                      backgroundColor: Colors.grey[200],
                                      fixedSize: Size(mediaQ.width / 12.5, 50),
                                      padding: const EdgeInsets.only(
                                        left: 12,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          'Watch Video',
                                          style: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
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
                        const SizedBox(width: 32),
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFEFECFF),
                  fixedSize: Size(mediaQ.width / 13, 60),
                ),
                child: Text(
                  'Features',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF5236FF),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: mediaQ.width / 3,
                  child: Text(
                    'Powerful features to boost your productivity',
                    style: GoogleFonts.nunito(
                      fontSize: 48,
                      fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FeatureCard(
                      title: 'Secured Platform',
                      description:
                          'Contrary to popular belief, Lore ipsum is not simply random text. It has roots in a piece.',
                      assetImage: 'assets/ilustrations/ilustration_2.png',
                    ),
                    SizedBox(width: 24),
                    FeatureCard(
                      title: 'Advanced Analytics',
                      description:
                          'Contrary to popular belief, Lore ipsum is not simply random text. It has roots in a piece.',
                      assetImage: 'assets/ilustrations/ilustration_1.png',
                    ),
                    SizedBox(width: 24),
                    FeatureCard(
                      title: 'Powerful Automation',
                      description:
                          'Contrary to popular belief, Lore ipsum is not simply random text. It has roots in a piece.',
                      assetImage: 'assets/ilustrations/ilustration_6.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: mediaQ.height / 5),
              Padding(
                padding: EdgeInsets.only(
                  left: mediaQ.width / 5.75,
                ),
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: mediaQ.height / 1.5,
                          width: mediaQ.width / 2,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        Container(
                          height: mediaQ.height / 1.5,
                          width: mediaQ.width / 5,
                          decoration: const BoxDecoration(
                            color: Color(0xFF5236FF),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 48,
                      bottom: 48,
                      right: mediaQ.width / 8,
                      child: Image.asset(
                        'assets/ilustrations/ilustration_8.png',
                        scale: 1.15,
                      ),
                    ),
                    Positioned(
                      top: mediaQ.height / 6,
                      bottom: mediaQ.height / 6,
                      left: 32,
                      child: SizedBox(
                        width: mediaQ.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Powerful features to boost your productivity',
                              style: GoogleFonts.nunito(
                                fontSize: 48,
                                fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                height: 1,
                              ),
                              softWrap: true,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'It is a long established fact that a reader will be by the form readable content of a page when looking at its layout. The point of using lorem Ipsum.',
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                color: Colors.grey[600],
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                              ),
                              softWrap: true,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Image.asset('assets/icons/budget.png'),
                                const SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Cost Effective',
                                      style: GoogleFonts.nunito(
                                        fontSize: 24,
                                        fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        height: 1,
                                      ),
                                      softWrap: true,
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: mediaQ.width / 6,
                                      child: Text(
                                        'Contrary to popular belief, Lore ipsum is not simply random text.',
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        softWrap: true,
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
                  ],
                ),
              ),
              SizedBox(height: mediaQ.height / 3),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: const Color(0xFFEFECFF),
                  fixedSize: Size(mediaQ.width / 13, 60),
                ),
                child: Text(
                  'How It Work',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF5236FF),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: SizedBox(
                  width: mediaQ.width / 3,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Work smarter',
                        style: GoogleFonts.nunito(
                          fontSize: 48,
                          fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'with easy access for user...',
                        style: GoogleFonts.nunito(
                          fontSize: 48,
                          fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          height: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: mediaQ.width / 5,
                      decoration: const BoxDecoration(
                        color: Color(0xFF5236FF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '01. Create account',
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Container(
                      height: 80,
                      width: mediaQ.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '02. Install tracking code',
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Container(
                      height: 80,
                      width: mediaQ.width / 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '03. Track analytics',
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/icons/profile.png'),
                          const SizedBox(width: 16),
                          SizedBox(
                            width: mediaQ.width / 6,
                            child: Text(
                              'Create your account & start your work',
                              style: GoogleFonts.nunito(
                                fontSize: 32,
                                fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                height: 1,
                              ),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: mediaQ.width / 5,
                        child: Text(
                          'It is a long established fact that a reader will be by the form readable content of a page when looking at its layout. The point of using lorem Ipsum.',
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Colors.grey[600],
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: Colors.black,
                          fixedSize: Size(mediaQ.width / 12.5, 50),
                        ),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: mediaQ.width / 10),
                  Image.asset(
                    'assets/ilustrations/ilustration_9.png',
                    scale: 1.15,
                  ),
                ],
              ),
              SizedBox(height: mediaQ.height / 5),
              Stack(
                children: <Widget>[
                  ColoredBox(
                    color: const Color(0xFF5236FF),
                    child: Image.asset(
                      'assets/ilustrations/ilustration_10.png',
                      fit: BoxFit.contain,
                      width: double.maxFinite,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: mediaQ.height / 5),
                    child: Center(
                      child: SizedBox(
                        width: mediaQ.width / 1.5,
                        child: const TestimonialCarousel(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaQ.height / 5),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: mediaQ.width / 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              backgroundColor: const Color(0xFFEFECFF),
                              fixedSize: Size(mediaQ.width / 13, 60),
                            ),
                            child: Text(
                              'Pricing',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF5236FF),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Simple and ',
                            style: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              height: 1.5,
                            ),
                            softWrap: true,
                          ),
                          Text(
                            'flexible pricing',
                            style: GoogleFonts.nunito(
                              fontSize: 32,
                              fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              height: 1,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'It is a long established fact that a reader will be by the form readable content of a page when looking at its layout. The point of using lorem Ipsum.',
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              color: Colors.grey[600],
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Accepted Paymnent Methods',
                            style: GoogleFonts.nunito(
                              fontSize: 24,
                              fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              height: 1,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(height: 24),
                          Container(
                            width: mediaQ.width / 4,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  'assets/icons/visa.png',
                                  width: 80,
                                  height: 60,
                                ),
                                Image.asset(
                                  'assets/icons/mastercard.png',
                                  width: 80,
                                  height: 60,
                                ),
                                Image.asset(
                                  'assets/icons/paypal.png',
                                  width: 80,
                                  height: 60,
                                ),
                                Image.asset(
                                  'assets/icons/amazon.png',
                                  width: 80,
                                  height: 60,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 64),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        PricePlanCard(
                          title: 'Basic',
                          badgeText: 'Save 30%',
                          badgeColor: Colors.white,
                          price: 7.99,
                          yearlyPrice: r'Or 88$ per year',
                          benefits: <String>[
                            'Unlimited members',
                            'Unlimited feedback',
                            'Weekly team Feedback Friday',
                            'Custom Kudos +9 ilustration',
                            'Team feedback history',
                          ],
                        ),
                        SizedBox(width: 24),
                        PricePlanCard(
                          title: 'Advanced',
                          badgeText: 'Popular',
                          badgeColor: Color.fromRGBO(200, 190, 255, 1),
                          price: 10.99,
                          yearlyPrice: r'Or 120$ per year',
                          benefits: <String>[
                            'Unlimited members',
                            'Unlimited feedback',
                            'Weekly team Feedback Friday',
                            'Custom Kudos +9 ilustration',
                            'Team feedback history (30 items)',
                            'Personal feedback history (6 items)',
                            'Slack integration',
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: mediaQ.height / 5),
              Stack(
                children: <Widget>[
                  SizedBox(height: mediaQ.height * 1.75),
                  Image.asset('assets/ilustrations/ilustration_13.png'),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQ.width / 7,
                    ),
                    child: Image.asset('assets/ilustrations/ilustration_12.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: mediaQ.width / 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Start your free trial today',
                                style: GoogleFonts.nunito(
                                  fontSize: 32,
                                  fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  height: 1,
                                ),
                                softWrap: true,
                              ),
                              const SizedBox(height: 24),
                              Text(
                                'It is a long established fact that a reader will be by the form readable content of a page when looking at its layout. The point of using lorem Ipsum.',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  height: 1.5,
                                ),
                                softWrap: true,
                              ),
                              const SizedBox(height: 24),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: mediaQ.width / 7,
                                    height: 60,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: '  your mail here...',
                                        hintStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          borderSide: BorderSide.none,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white30,
                                        contentPadding: const EdgeInsets.only(left: 16),
                                      ),
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
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
                                      backgroundColor: Colors.white,
                                      elevation: 0,
                                      side: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      fixedSize: const Size(180, 50),
                                    ),
                                    child: Text(
                                      'Get Started',
                                      style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 48),
                        Image.asset('assets/ilustrations/ilustration_11.png'),
                      ],
                    ),
                  ),
                  Positioned(
                    top: mediaQ.height * 0.9,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaQ.width / 5.5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              backgroundColor: const Color(0xFFEFECFF),
                              fixedSize: Size(mediaQ.width / 13, 60),
                            ),
                            child: Text(
                              'How It Work',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF5236FF),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Center(
                            child: SizedBox(
                              width: mediaQ.width / 3,
                              child: Text(
                                'Most popular articles',
                                style: GoogleFonts.nunito(
                                  fontSize: 48,
                                  fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  height: 1,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ArticleCard(
                                title: '10 Top tips for making your SaaS product sticky',
                                description:
                                    'It is a long established fact that a reader will be by the form readable content of a page when looking at its layout. The point of using lorem Ipsum.',
                                assetImage: 'assets/images/article_1.png',
                                postingDate: 'November 15, 2022',
                              ),
                              SizedBox(width: 24),
                              ArticleCard(
                                title: 'Automate Reports Generation with SaaSup',
                                description:
                                    'It is a long established fact that a reader will be by the form readable content of a page when looking at its layout. The point of using lorem Ipsum.',
                                assetImage: 'assets/images/article_2.png',
                                postingDate: 'November 15, 2022',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mediaQ.height / 5),
            ],
          ),
        ),
      ),
    );
  }
}
