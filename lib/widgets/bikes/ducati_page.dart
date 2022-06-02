import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DucatiPage extends StatefulWidget {
  const DucatiPage({Key? key}) : super(key: key);

  @override
  State<DucatiPage> createState() => _DucatiPageState();
}

class _DucatiPageState extends State<DucatiPage> {
  int activeIndex = 0;
  final images = [
    "https://economictimes.indiatimes.com/thumb/msid-77761097,width-1200,height-900,resizemode-4,imgsize-355003/the-front-headlight-assembly-is-extremely-compact-on-the-ducati-panigale-v2-.jpg?from=mdr",
    "https://kickstart.bikeexif.com/wp-content/uploads/2022/02/custom-ducati-monster-1200.jpg",
    "https://m.economictimes.com/thumb/msid-87774663,width-1200,height-900,resizemode-4,imgsize-54882/ducati-panigale-v4-sp-is-powered-by-a-1103-cc-engine-.jpg",
    "https://scramblerducati.com/wp-content/uploads/2018/08/Icon-Yellow_hero-2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Ducati",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 176, 14, 10)),
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
                  "About Ducati",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Interestingly, Ducati didn’t start out making motorcycles. As Donut Media explains, the company was founded in 1926 by 3 Italian brothers that wanted to make radios. And while their radio factory was amazingly advanced for the period, after WWII Italy needed transportation, not radios. So, Ducati switched to bikes. At first, its products really were bicycles. Only they were fitted with a tiny motor licensed from another Italian firm, Siata. With only 1.5 hp, it wasn’t fast, but it got 180 mpg. After producing more than 25,000 of these bikes per year, Ducati developed its own motorcycles, starting in 1950.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "At the time, competing in races like the Moto Giro d’Italia helped promote a motorcycle company’s wares. Basically, races were like the Instagram influencers of the 50s and 60s. Ducati was facing bankruptcy, but the company hired engineer and designer Fabio Taglioni to help Ducati’s racing team win. And with the 1956 Ducati 125cc Grand Sport, the team took 1st place at the Moto Giro d’Italia. Thus, setting up the close relationship Ducati motorcycles have with racing.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Iconic features of Ducati motorcycles",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Most of the characteristic features of today’s Ducati motorcycles developed through racing. Perhaps the best known is Ducati’s desmodromic valves. Inside most modern engines, as Roadshow explains, a camshaft opens the combustion chamber’s valves, and springs force them closed. However, because early springs were made of poor-quality metal, at high speeds, they would either fail or break. Taglioni solved this by replacing the springs with solid arms and lobed cams. Today, the system mainly just adds cost and complexity, but it’s a Ducati trademark. The technology first debuted in the 1956 125 ‘Trialbero’ race bike, according to Silodrome, and appeared on a road bike in 1969. The late 60s and early 70s saw the rise of Japanese superbikes like Honda’s CB750. It also saw the introduction of another Ducati staple: the 90° twin, or L-twin. When equipped with desmodromic valves, the 1972 Ducati 750 Imola Desmo won 1st and 2nd place in the 1972 Imola 200, Italy’s equivalent of the Daytona 200, according to Motorcycle Classics. This victory paved the way for the 1974 Imola 750SS, one of the best-handling motorcycles ever.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Taglioni would later update his L-twin design by swapping the expensive and noisy bevel-gear-driven cams with cheaper, easier-to-maintain rubber belt-driven ones. Ducati motorcycles still use rubber belts. This engine first debuted in the 1979 Ducati 500SL Pantah, which, according to Ian Falloon’s The Complete Book of Ducati Motorcycles, also saw the debut of Ducati’s trellis frame. This frame, Cycle World explains, allowed the bike to flex and dig into corners, providing better feel and control for the rider. This trellis frame would later play center-stage in one of Ducati’s most iconic modern bikes, the Monster. Influenced by 1980s ‘streetfighter’, or ‘naked’ bikes—racing bikes that had all fairings and excess elements removed—the Monster was a bit of a hodge-podge, taking components from many different Ducati motorcycles to save costs. However, this bike would become, and still is, one of Ducati’s best-selling bikes. By 2005, fully half of all Ducati motorcycles ever sold were Monsters.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The descendants of the 916 also introduced some important technology for the motorcycle world. The 2009 1198 was one of the first bikes to come with traction control, for example. The later 1199 R is one of the fastest motorcycles ever made, topping out at 202 mph. Its successor, 1299 Superleggera was the first production bike to feature a carbon-fiber frame, sub-frame, swingarm, and wheels.",
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
        activeDotColor: Color.fromARGB(255, 176, 14, 10),
        dotColor: Colors.black12,
      ),
    );
  }
}
