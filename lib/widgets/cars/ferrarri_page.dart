import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FerrariPage extends StatefulWidget {
  const FerrariPage({Key? key}) : super(key: key);

  @override
  State<FerrariPage> createState() => _FerrariPageState();
}

class _FerrariPageState extends State<FerrariPage> {
  int activeIndex = 0;
  final images = [
    "https://www.supercars.net/blog/wp-content/uploads/2020/09/2020-Ferrari-F8-Tributo.jpg",
    "https://carconfigurator.ferrari.com/assets/cars/portofinom/packages/default/car-ferrari-portofino-m_splash.jpg",
    "https://media.wired.com/photos/5ceeed5b0bdd96c34c6174a3/16:9/w_2400,h_1350,c_limit/01_Ferrari_SF90_03.jpg",
    "https://imgd.aeplcdn.com/0x0/n/cw/ec/49376/f8-tributo-exterior-rear-view.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Ferrari",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 212, 0, 0)),
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
                  "About Ferrari",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "The brand Ferrari is synonymous to luxury, glamour and wealth in the automobile market. Primarily based in Maranello, Italy, Ferrari is an Italian luxury sports car manufacturer that is today renowned all over the world. The company came into existence in 1928 under the able leadership of Enzo Ferrari, who had a dream to manufacture the most elite yet speedy car that would win races. While the car was successful on the tracks, winning most races across the European continent, the company had its troubled financial times between the 1940’s and the 1970’s.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Ferrari primarily launched itself as a car manufacturer to design racing cars. Launched in 1988, the Ferrari F 40 garnered a lot of acclaims and even till date, the car is known to be one of the best sports cars ever. Ferrari was acquired by Fiat in the late 1980’s and this was when the company started to further penetrate into many other countries in Europe and Asia. Ferrari was predominantly operating as a manufacturer of luxury sports cars for racing. The first passenger car wasn’t made until 1947 and this first passenger car was the 125S. Today, Ferrari holds an interest in bicycles, perfumes, watches and electronics along with continuing its hold in the sports car market.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Foundation of Ferrari - The Expansion",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "When Enzo Ferrari first thought of incorporating his company, Scuderia Ferrari in 1929, he was not even close to the thought of making cars for the roads. His heart belonged to the race tracks and that’s where he wanted all of his cars to be. Headquartered in Modena, the company initially functioned as the racing division of Alfa Romeo racing cars. In 1993, when Alfa Romeo withdrew its in-house racing team, Ferrari took over its works team and this was also the time when Ferrari first experienced the automotive industry’s realities.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The Ferrari factory moved to Maranello in 1943 amidst all the chaos that World War II had left back. The first passenger cars built by Ferrari was sold in the market to fund Scuderia Ferrari. This part of the brand dealt with the sports racing cars and was regarded as a separate division from Ferrari, as a brand that would manufacture consumer cars for the real roads.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The acquisitions and expansions in Ferrari started in the year 1969 when Fiat took a 50% stake in the company. This led to an increase in the available investment funds and the production immediately started. After several years, Ferrari is an independent brand once again, with 10% of the stake being sold in an IPO in 2015.",
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
        activeDotColor: Color.fromARGB(255, 212, 0, 0),
        dotColor: Colors.black12,
      ),
    );
  }
}
