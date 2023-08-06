import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestimonialCarousel extends StatefulWidget {
  const TestimonialCarousel({super.key});

  @override
  State<TestimonialCarousel> createState() => _TestimonialCarouselState();
}

class _TestimonialCarouselState extends State<TestimonialCarousel> {
  CarouselController buttonCarouselController = CarouselController();

  List<String> userImagesList = <String>[
    'assets/images/result_1643960.jpeg',
    'assets/images/result_1643962.jpeg',
    'assets/images/result_1644065.jpeg',
  ];

  List<String> userNamesList = <String>[
    'Mădălin Tîlmaciu',
    'Liam Page',
    'Bruno Fernandes',
  ];

  String testimonialMessage =
      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage.";

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            buttonCarouselController.previousPage();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.white38,
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                width: mediaQ.width / 13,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Testimonial',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Trusted by milions of creators.',
                style: GoogleFonts.nunito(
                  fontSize: 48,
                  fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Text(
                '‘‘',
                style: GoogleFonts.nunito(
                  fontSize: 72,
                  fontWeight: FontWeight.lerp(FontWeight.w900, FontWeight.bold, 0.5),
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: mediaQ.height / 2.5,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
                items: <int>[0, 1, 2].map<Widget>(
                  (int i) {
                    return Column(
                      children: <Widget>[
                        SizedBox(
                          width: mediaQ.width / 2,
                          child: Text(
                            testimonialMessage,
                            style: GoogleFonts.nunito(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ClipOval(
                          child: Image.asset(
                            userImagesList[i],
                            height: 100,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          userNamesList[i],
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Developer',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            height: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow,
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            buttonCarouselController.nextPage();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.white38,
          ),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
