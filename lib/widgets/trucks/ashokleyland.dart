import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AshokLeylandPage extends StatefulWidget {
  const AshokLeylandPage({Key? key}) : super(key: key);

  @override
  State<AshokLeylandPage> createState() => _AshokLeylandPageState();
}

class _AshokLeylandPageState extends State<AshokLeylandPage> {
  int activeIndex = 0;
  final images = [
    "https://www.financialexpress.com/wp-content/uploads/2021/04/Ashok-Leyland.png",
    "https://c4.wallpaperflare.com/wallpaper/160/632/1023/vehicles-ashok-leyland-leyland-wallpaper-preview.jpg",
    "https://img.onmanorama.com/content/dam/mm/en/news/business/images/2021/1/6/ashok-leyland-tipper-1.jpg",
    "https://www.deccanherald.com/sites/dh/files/articleimages/2022/01/03/3520-hu-ts-04th-june-2020-1067479-1641202407.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Ashok Leyland",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 1, 111, 182)),
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
                  "About Ashok Leyland",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Ashok Leyland is an Indian automobile company headquartered in Chennai, India. It is owned by the Hinduja Group. It was founded in 1948 as Ashok Motors and became Ashok Leyland in the year 1955. Ashok Leyland, flagship of the Hinduja group, is the 2nd largest manufacturer of commercial vehicles in India, the 3rd largest manufacturer of buses in the world, and the 10th largest manufacturers of trucks. Headquartered in Chennai, 9 manufacturing plants gives an international footprint - 7 in India, a bus manufacturing facility in Ras Al Khaimah (UAE), one at Leeds, United Kingdom and a joint venture with the Alteams Group for the manufacture of high-press die-casting extruded aluminum components for the automotive and telecommunications sectors, Ashok Leyland has a well-diversified portfolio across the automobile industry. Ashok Leyland has recently been ranked as 34th best brand in India.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "A US \$2.30 billion company, and a footprint that extends across 50 countries, we are one of the most fully-integrated manufacturing companies this side of the globe. Ashok Leyland has a product range from 1T GVW (Gross Vehicle Weight) to 55T GTW (Gross Trailer Weight) in trucks, 9 to 80 seater buses, vehicles for defence and special applications, and diesel engines for industrial, genset and marine applications. Ashok Leyland launched India’s first electric bus and Euro 6 compliant truck in 2016.Over 70 million passengers use Ashok Leyland buses to get to their destinations every day and our trucks keep the wheels of the economy moving. With the largest fleet of logistics vehicles deployed in the Indian Army and significant partnerships with armed forces across the globe, Ashok Leyland helps keep borders secure.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More about Ashok Leyland",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Pioneers in the Commercial Vehicle (CV) space, many product concepts have become industry benchmarks and norms. Ashok Leyland has ISO/TS 16949 Corporate Certification and is also the first CV manufacturer in India to receive the OBD-II (on board diagnostic) certification for BS IV-compliant commercial vehicle engines, SCR (selective catalytic reduction), iEGR (intelligent exhaust gas recirculation) and CNG technologies. We are the first truck and bus manufacturer outside of Japan to win the Deming prize for our Pantnagar plant in 2016 and the Hosur Unit II being awarded the Deming Prize in 2017. Driven by innovative products suitable for a wide range of applications and an excellent understanding of the customers and local market conditions, Ashok Leyland has been at the fore-front of the commercial vehicle industry for decades.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The Company’s wide-spread customer base is served through an all-India sales and service network, supplemented by close to 3000 touch points. A global network of over 550 touch points that facilitate on-road service for millions of vehicles. With technology-enabled customer engagement processes and knowledge on the specific applications of the product range, Ashok Leyland sales team are well equipped to fulfil customer’s needs. Ashok Leyland manages driver training institutes across India and has trained over 8,00,000 drivers since inception. On-site service training for technicians are provided by Ashok Leyland’s service training institutes located in 9 locations across India.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "People, Planet and Profit for all stakeholders especially our customers is at the core of Ashok Leyland which resonates with our Philosophy of ‘AAPKI JEET, HAMARI JEET’ .",
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
        activeDotColor: Color.fromARGB(255, 1, 111, 182),
        dotColor: Colors.black12,
      ),
    );
  }
}
