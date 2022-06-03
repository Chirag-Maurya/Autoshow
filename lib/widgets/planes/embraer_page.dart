import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EmbraerPage extends StatefulWidget {
  const EmbraerPage({Key? key}) : super(key: key);

  @override
  State<EmbraerPage> createState() => _EmbraerPageState();
}

class _EmbraerPageState extends State<EmbraerPage> {
  int activeIndex = 0;
  final images = [
    "https://d3lcr32v2pp4l1.cloudfront.net/Pictures/1024x536/0/1/9/82019_tp2021image3_934278.jpg",
    "https://www.aviationtoday.com/wp-content/uploads/2021/11/largest-variant.jpeg",
    "https://www.stanstednews.com/gallery/6695.jpg",
    "https://www.airdatanews.com/wp-content/uploads/2021/03/Embraer_turboprop.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Embraer",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 103, 177)),
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
                  "About Embraer",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Embraer S.A. (Portuguese pronunciation: [ẽbɾaˈɛɾ]) is a Brazilian multinational aerospace manufacturer that produces commercial, military, executive and agricultural aircraft, and provides aeronautical services. It was founded in 1969 in São José dos Campos, São Paulo, where its headquarters are located. The company is the third largest producer of civil aircraft, after Boeing and Airbus.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Embraer arose from the dream to transform Brazil into a country possessing the latest in technology. From these dreams and challenges we have turned Embraer into one of the largest commercial aircraft companies in the world. By stretching the limits of what is possible, and embracing opportunities from day one of our history, we have done the unimaginable in the sectors of commercial and executive aviation, defense and security.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More info on Embraer",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Embraer SA (Embraer) is a developer and manufacturer of aircraft and allied systems. The company develops designs, manufactures, and markets commercial, executive, defense, and agriculture aircraft. It produces jets, executive jets in the entry-level, light, ultra-large, and mid-light/mid-size categories including the Phenom 100/300 family, the Lineage 1000, and the Legacy 450/500 family. The company supplies defense aircraft to the Brazilian Air Force, and to armed forces in the US, Latin America, Europe, and Asia. It also provides after-sales support and maintenance services to customers across the world. The company offers integrated solutions and systems for the defense and security industry. Embraer is headquartered in Pinheiros, Sao Paulo, Brazil.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Over the years, Embraer has produced many different types of aircraft. However, they initially focused on passenger aircraft. The first turboprop passenger aircraft they produced was the Embraer EMB 110 Bandeirante. It was designed by the French engineer Max Holste and the passenger model first flew in 1972. The aim was to create a multifunctional aircraft that was suitable for both military and civilian purposes. The first order was for 80 of these aircraft for the Brazilian Air Force.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Initially, Embraer was only a Brazilian company and they focused entirely on the domestic market. The growth of the company in the early years was entirely dependent on the government providing contracts. This meant that they sold only to the domestic market until 1975. This included both commercial and military aircraft. The first aircraft was received by the Brazilian Air Force in 1972 following Embraer receiving its airworthiness certificate. Embraer continues to produce upgraded versions of this aircraft.",
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
        activeDotColor: Color.fromARGB(255, 0, 103, 177),
        dotColor: Colors.black12,
      ),
    );
  }
}
