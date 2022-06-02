import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class KawasakiPage extends StatefulWidget {
  const KawasakiPage({Key? key}) : super(key: key);

  @override
  State<KawasakiPage> createState() => _KawasakiPageState();
}

class _KawasakiPageState extends State<KawasakiPage> {
  int activeIndex = 0;
  final images = [
    "https://www.belladasemana.com.br/storage/blog/1586184182_1366_2000.jpg",
    "https://content2.kawasaki.com/ContentStorage/KMC/ProductTrimGroup/69/c74d7682-cf7e-453f-b744-24cf73a3696c.jpg?w=750",
    "https://www.rushlane.com/wp-content/uploads/2020/07/kawasaki-zx25r-launch-price-india-1-600x400.jpg",
    "https://m.media-amazon.com/images/I/81CtRim6-7L._AC_SL1500_.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Kawasaki",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 50, 205, 50)),
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
                  "About Kawasaki",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "IT ALL BEGAN IN A SHIPYARD IN 1878 BY THIS MAN, SHOZO KAWASAKI. Today, KAWASAKI HEAVY INDUSTRIES, a massive global engineering based company who operate in very diverse markets, but always at the forefront of cutting edge technology. Full-scale production of motorcycles commenced over fifty years ago. Our first motorcycle engine was designed based on technical know-how garnered from the development and production of aircraft engines. Our entry into the motorcycle industry was driven by Kawasaki’s constant effort to develop new technologies. Over the years we have released numerous new models that have helped shape the market, and in the process, created many enduring legends based on the speed and power of our machines. In 1996, we produced our 10 millionth vehicle, a testament to Kawasaki’s ability to meet the needs of a wide range of riders. As Kawasaki continues to \"Let the good times roll,\" our latest challenges will surely give birth to new legends. ",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Kawasaki Heavy Industries, Ltd. (KHI) is engaged in building transportation systems for the 21st century, and in doing so, is utilizing the wealth of technological know-how it has accumulated over the past 100 years. The ship building division has led the world in producing ever larger, ever faster, increasingly automated ships. It is constantly striving to find ways to increase ship manufacturing and navigation efficiency while conserving energy. So far, the quest has resulted in the development of Liquid Natural Gas (LNG) carriers, high-speed ships and other future-oriented marine technologies. By applying aviation principles, a Jetfoil that speeds above the water at an amazing 45 knots is one project that has become reality. Kawasaki led Japan's shipbuilding consortium formed to build the Techno-Superliner. This exciting new vessel is planned to carry a payload of approximately 1,000 tons and travel at a cruising speed of 50 knots.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More on Kawasaki",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Sleek and sporty, bright and colorful Kawasaki motorcycles provide the perfect combination of style and substance. That means Kawasaki bikes are much more than just eye candy. You can count on Kawasaki to build sturdy, reliable machines that stand the test of time. Their lightweight yet powerful bikes are popular with novice and veteran riders alike, and the legendary quality of Kawasaki motorcycles has earned this classic Japanese brand a loyal following all over the world.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "You may already know Kawasaki as a manufacturer of superior sport bikes, but the possibilities don’t end there. With a variety of suspension styles and engine capacities available, there’s a Kawasaki bike for any purpose. Kawasaki engines range from 64cc single-cylinder engines for motocross bikes, to 1,700 cc engines for touring bikes. High-end models include an advanced centrifugal-type supercharger for efficient air compression, eliminating the need for bulky intercoolers. Kawasaki touring motorcycles are designed for comfortable riding, so that you and your bike can endure hours on the road at top speeds. Long-distance rides can put a strain on your body, so Kawasaki touring bikes come with special features like adjustable windshields, hand guards, and even an electronic cruise control system. The low-end torque, aerodynamic design, and responsive handling of Kawasaki cruisers makes these bikes ideal for navigating city streets. Just be prepared to attract attention! And any experienced biker can tell you that’s a good thing, especially in heavy traffic. That signature neon green color serves a practical purpose, increasing your safety by alerting other motorists to your presence on the road. Many Kawasaki bikes offer different power modes that make them particularly adaptable to the fast-changing conditions of city riding. Turn on full power when you need a performance boost, and switch to low power mode when possible to save energy and give your engine a rest.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Maintaining your Kawasaki motorcycle is a breeze thanks to the easy availability of parts, and the abundance of technicians with specific training for the Kawasaki brand. With the company’s famously low failure rate, you can rest assured that your repair needs will be few and far between. Kawasaki is consistently rated as one of the top motorcycle brands for reliability. Whether you’re looking to compete in races, explore the countryside, or simply commute across town, you can’t go wrong with Kawasaki motorcycles. With unparalleled performance and incredible style, the Kawasaki brand stands for everything we love about motorcycles.",
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
        activeDotColor: Color.fromARGB(255, 50, 205, 50),
        dotColor: Colors.black12,
      ),
    );
  }
}
