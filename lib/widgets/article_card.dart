// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatefulWidget {
  const ArticleCard({
    super.key,
    required this.assetImage,
    required this.title,
    required this.description,
    required this.postingDate,
  });

  final String assetImage;
  final String title;
  final String description;
  final String postingDate;

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
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
        height: 600,
        width: 600,
        decoration: BoxDecoration(
          color: cardHovering ? Colors.white : Colors.grey[200],
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  widget.assetImage,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.postingDate,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Colors.grey[600],
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
                softWrap: true,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.title,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.description,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Colors.grey[600],
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
                softWrap: true,
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
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                ),
                child: Text(
                  'Read More',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: learnMoreHovering ? const Color(0xFF5236FF) : Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
