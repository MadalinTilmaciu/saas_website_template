import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PricePlanCard extends StatefulWidget {
  const PricePlanCard({
    super.key,
    required this.title,
    required this.badgeText,
    required this.badgeColor,
    required this.price,
    required this.yearlyPrice,
    required this.benefits,
  });

  final String title;
  final String badgeText;
  final Color badgeColor;
  final double price;
  final String yearlyPrice;
  final List<String> benefits;

  @override
  State<PricePlanCard> createState() => _PricePlanCardState();
}

class _PricePlanCardState extends State<PricePlanCard> {
  bool buttonHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.benefits.length <= 5
          ? MediaQuery.of(context).size.height / 1.5
          : MediaQuery.of(context).size.height / 1.3,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 32,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.title,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: widget.badgeColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      widget.badgeText,
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                        color: widget.badgeColor == Colors.white ? Colors.grey : const Color(0xFF5236FF),
                        decoration: TextDecoration.none,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              height: 8,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '\$${widget.price}',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 4),
                Text(
                  ' / month',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFFFEECC),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                widget.yearlyPrice,
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFC68A15),
                  decoration: TextDecoration.none,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              height: 8,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              itemCount: widget.benefits.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: index == 1
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '${widget.benefits[index].split(' ').first} ',
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: widget.badgeColor == Colors.white ? Colors.black : const Color(0xFF5236FF),
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                ),
                                softWrap: true,
                              ),
                              Text(
                                widget.benefits[index].split(' ').last,
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                ),
                                softWrap: true,
                              ),
                            ],
                          )
                        : index == 3
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '${widget.benefits[index].split(' ')[0]} ${widget.benefits[index].split(' ')[1]} ',
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: Colors.grey[600],
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    softWrap: true,
                                  ),
                                  Text(
                                    '${widget.benefits[index].split(' ')[2]} ${widget.benefits[index].split(' ')[3]}',
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      color: widget.badgeColor == Colors.white ? Colors.black : const Color(0xFF5236FF),
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    softWrap: true,
                                  ),
                                ],
                              )
                            : Text(
                                widget.benefits[index],
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                ),
                                softWrap: true,
                              ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: MouseRegion(
              onEnter: (PointerEnterEvent event) {
                setState(
                  () {
                    buttonHovering = !buttonHovering;
                  },
                );
              },
              onExit: (PointerExitEvent event) {
                setState(
                  () {
                    buttonHovering = !buttonHovering;
                  },
                );
              },
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: buttonHovering == true ? Colors.black : Colors.grey[200],
                  elevation: 0,
                  side: const BorderSide(
                    color: Colors.grey,
                  ),
                  fixedSize: const Size(200, 60),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: buttonHovering == true ? Colors.white : Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
