import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RoyalCaribbeanPage extends StatefulWidget {
  const RoyalCaribbeanPage({Key? key}) : super(key: key);

  @override
  State<RoyalCaribbeanPage> createState() => _RoyalCaribbeanPageState();
}

class _RoyalCaribbeanPageState extends State<RoyalCaribbeanPage> {
  int activeIndex = 0;
  final images = [
    "https://www.cruiseandferry.net/Portals/0/EasyDNNNews/8822/940420p516EDNmainimg-Royal-Caribbean-to-build-terminal-in-Galveston_credit-Port-of-Galveston_940x443.jpg",
    "https://www.cruisemapper.com/images/lines/1-d580835423c900.jpg",
    "https://g.foolcdn.com/editorial/images/441951/royal-caribbean-stock.jpeg",
    "https://img.cruisecritic.net/img-cc-r/features/2017/09/rci-history-hero.jpg?w=800",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Royal Caribbean Cruises Ltd.",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 19, 58, 124)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 300,
                        autoPlay: true,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        }),
                    itemCount: images.length,
                    itemBuilder: (context, index, realIndex) {
                      final image = images[index];
                      return buildImage(image, index);
                    },
                  ),
                  const SizedBox(height: 10),
                  buildIndicator(),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Text(
                  "About Royal Caribbean Cruises Ltd.",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Royal Caribbean International is known for driving innovation at sea and has continuously redefined cruise vacationing since its launch in 1969. Each successive class of ships is an architectural marvel and pushes the envelope of what is possible on a cruise ship. Onboard, the global cruise line has debuted countless industry “firsts” – such as rock climbing, ice skating and surfing at sea – to capture the imagination of families and adventurous vacationers alike. Throughout, guests sail on exciting itineraries to some of the world’s most popular destinations and enjoy Royal Caribbean’s friendly and engaging service.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Royal Caribbean Cruises Ltd. operates as a global cruise company operating a fleet of vessels in the cruise vacation industries. The Company operates through brands which primarily serve the contemporary, premium, and deluxe segments of the cruise vacation industry which also includes the budget and luxury segments.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More on Royal Caribbean Cruises Ltd.",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Royal Caribbean Cruises Ltd. is a cruise company that owns and operates three global cruise vacation brands, including Royal Caribbean International, Celebrity Cruises and Silversea Cruises. The Company also own joint venture interest in the TUI Cruises and Hapag-Lloyd Cruises. The Company's brands operate approximately 61 ships in the cruise vacation industry. Royal Caribbean International offers a range of itineraries to the destinations, including Alaska, Asia, Australia, Bahamas, Bermuda, Canada, the Caribbean, Europe, the Panama Canal and New Zealand, with cruise lengths ranging from one to 25 nights. Celebrity Cruises include two approximately Edge-class ships, Celebrity Beyond and Celebrity Ascent. Silversea Cruises operates the Silver Dawn under a finance lease. The Company offers to handle virtually all travel aspects related to guest reservations and transportation, including arranging guest pre and post hotel stay arrangements and air transportation.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Royal Caribbean is the world's second- largest cruise company, operating more than 60 ships across six global and partner brands in the cruise vacation industry. Brands the company operates include Royal Caribbean International, Celebrity Cruises, Azamara Club Cruises, and Silversea. The company also has a 50% investment in a joint venture that operates TUI Cruises and a 49% stake in Pullmantur, allowing it to compete on the basis of innovation, quality of ships and service, variety of itineraries, choice of destinations, and price.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Royal Caribbean Cruises Ltd. operates in the cruise vacation industry worldwide. It owns five cruise brands: Royal Caribbean International, Celebrity Cruises, Pullmantur, Azamara Club Cruises, and CDF Croisieres de France.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String image, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1),
      color: Colors.grey,
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: WormEffect(
        dotWidth: 10,
        dotHeight: 10,
        activeDotColor: Color.fromARGB(255, 19, 58, 124),
        dotColor: Colors.black12,
      ),
    );
  }
}
