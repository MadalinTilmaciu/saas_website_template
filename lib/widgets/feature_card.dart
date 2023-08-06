import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureCard extends StatefulWidget {
  const FeatureCard({
    super.key,
    required this.title,
    required this.description,
    required this.assetImage,
  });

  final String title;
  final String description;
  final String assetImage;

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool cardHovering = false;
  bool learnMoreHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent event) {
        setState(
          () {
            cardHovering = !cardHovering;
          },
        );
      },
      onExit: (PointerExitEvent event) {
        setState(
          () {
            cardHovering = !cardHovering;
          },
        );
      },
      child: Container(
        height: 500,
        width: 400,
        decoration: BoxDecoration(
          color: cardHovering ? Colors.grey[200] : Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: <Widget>[
            Image.asset(
              widget.assetImage,
              width: 300,
              height: 300,
            ),
            Text(
              widget.title,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                widget.description,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Colors.grey[600],
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 48),
            TextButton(
              onPressed: () {},
              onHover: (bool value) {
                setState(
                  () {
                    learnMoreHovering = !learnMoreHovering;
                  },
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  Colors.transparent,
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: Text(
                  'Learn More',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: learnMoreHovering ? const Color(0xFF5236FF) : Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
