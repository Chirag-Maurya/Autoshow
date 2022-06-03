import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AirbusPage extends StatefulWidget {
  const AirbusPage({Key? key}) : super(key: key);

  @override
  State<AirbusPage> createState() => _AirbusPageState();
}

class _AirbusPageState extends State<AirbusPage> {
  int activeIndex = 0;
  final images = [
    "https://media.wired.com/photos/5931049baa2d0962adab436d/master/pass/Airbus_HP.jpg",
    "https://static01.nyt.com/images/2020/01/31/business/31airbus/merlin_167968134_fa2158a2-8e9a-495a-83d7-8b0e2852dab2-mobileMasterAt3x.jpg",
    "https://static.dw.com/image/60156132_101.jpg",
    "https://media.innovationorigins.com/2020/09/ZEROe-concept-aircraft-Patrol-Flight.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Airbus",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 32, 91)),
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
                  "About Airbus",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Airbus Industrie, European aircraft-manufacturing consortium formed in 1970 to fill a market niche for short- to medium-range, high-capacity jetliners. It is now one of the world’s top two commercial aircraft manufacturers, competing directly with the American Boeing Company and frequently dominating the jetliner market in orders, deliveries, or annual revenue. Full members include the German-French-Spanish-owned European Aeronautic Defence and Space Company (EADS), with an 80 percent interest, and Britain’s BAE Systems, with 20 percent. Belgium’s Belairbus and Italy’s Alenia are risk-sharing associate members in selected programs. Headquarters are near Toulouse, France.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Airbus is a Franco-German based global aeronautics company that grew out of a European consortium designed to compete with the dominant American companies of the 1960s—Boeing, McDonnell Douglas, and Lockheed Martin. The company's A380 is the world's largest passenger plan. Airbus is working to create a cheap electric-fueled on-demand self-flying plane service. In November 2017, it debuted its Vahana prototype, a little pod of an aircraft with just enough room for a single passenger. What makes this vehicle unique is that it doesn’t need a runway. The Vahana features vertical take-off and landing capability, meaning it can leave from the top of a building and land in a field if need be. The company ran its first series of in-air tests this year and hopes to have its air-taxis open for business in the next 10 years.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More on Airbus",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "The Airbus program began in 1965 when the governments of France and Germany initiated discussions about forming a consortium to build a European high-capacity, short-haul jet transport. The following year French, German, and British officials announced that Sud Aviation (France), Arge Airbus (an informal group of German aerospace companies), and Hawker Siddeley Aviation (Britain) would study the development of a 300-seat airliner for the short-haul sector. Because engines meeting the Airbus requirements did not materialize, the initial design, designated the A300, was scaled to a 250-seat version.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "In 1969 the British government dropped out of the program, but France and Germany signed formal articles to proceed to the construction phase. Hawker Siddeley, responsible for the aircraft’s wing, remained a subcontractor. Airbus Industrie management company was set up in 1970 as a Groupement d’Intérêt Economique (GIE; “Grouping of Mutual Economic Interest”), a unique form of partnership instituted in French law in 1967. Originally, 50 percent of the funding came from France’s Aerospatiale (later Aerospatiale Matra), created by the merger of Sud Aviation with Nord Aviation and the French missile maker SEREB, and 50 percent came from Germany’s Deutsche Airbus (later DaimlerChrysler Aerospace Airbus), a joint venture in which Messerschmitt-Bölkow-Blohm had a 65 percent stake and VFW-Fokker a 35 percent stake. Spain’s Construcciones Aeronáuticas S.A. (CASA) joined in 1971 with a 4.2 percent share. Hawker Siddeley and other British companies were nationalized in 1977 into a single government conglomerate, British Aerospace (later BAE Systems), which joined Airbus as a true partner with a 20 percent share in 1979. In 2000 all the partners except BAE Systems merged into EADS, which thus acquired an 80 percent share of Airbus. The next year the GIE was replaced by a single private enterprise.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The A300 was developed to fill the market niche for a short- to medium-range, high-capacity aircraft. It was the first wide-body jetliner to be equipped with only two engines for better operating economics. The A300 prototype made its first flight in 1972, and the aircraft entered commercial service with Air France in 1974. Despite its excellent performance, the A300 initially sold poorly because of airlines’ concerns about its new and unproven manufacturer. A breakthrough occurred in 1977 when the U.S. carrier Eastern Air Lines entered into a leasing arrangement for the aircraft. A second boost for Airbus came in 1978, when it launched a program to develop a smaller-capacity, medium-range plane. That aircraft, the A310, first flew in 1982 and entered service three years later. With the addition of the A310 to its product line, Airbus Industrie was able to offer to operators the advantages and savings of an aircraft family—for example, similarity of flight decks, commonality of parts, and a range of sizes that allow the aircraft to be optimized to the routes for which they are best suited. That design and marketing approach was to characterize Airbus even after the A300/A310 family was formally discontinued in 2007.",
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
        activeDotColor: Color.fromARGB(255, 0, 32, 91),
        dotColor: Colors.black12,
      ),
    );
  }
}
