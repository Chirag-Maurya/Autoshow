import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LamborghiniPage extends StatefulWidget {
  const LamborghiniPage({Key? key}) : super(key: key);

  @override
  State<LamborghiniPage> createState() => _LamborghiniPageState();
}

class _LamborghiniPageState extends State<LamborghiniPage> {
  int activeIndex = 0;
  final images = [
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/limitedlambos2-1618325640.jpg",
    "https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_gw/aventador/2021/gate_aven_s_01_m.jpg",
    "https://assets.entrepreneur.com/content/3x2/2000/1639176582-Ent-MrBeats.png",
    "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Lamborghini",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 254, 167, 0)),
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
                  "About Lamborghini",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lamborghini is Italy’s answer to the German domination of manufacturing racing cars. Founded in 1963 by Ferruccio Lamborghini, an Italian magnate, the Lamborghini competes with the established racing car manufacturers, including Ferrari. The Miura sports coupe, one of the first of all Lamborghini models gained instant recognition for innovative engineering initiatives like the rear mid-engine and the rear wheel drive. It became the standard feature of the high-performance cars during that era.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The first decade saw the company attaining great heights, but the 1973 worldwide financial meltdown and oil crisis pushed its sales figures back considerably. The ownership of the company, Automobili Lamborghini S.p.A, changed hands three times before the Volkswagen Group took over in 1998. Since then, Lamborghini is manufacturing high-quality sports cars and V12 engines for offshore powerboat racing. The Urus, Huracan and the Aventador are the showpiece Lamborghini car models.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Foundation of Lamborghini ",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Lamborghini was always famous for manufacturing some of the most powerful automobile engines. The Lamborghini tractor is one such example. Ferruccio Lamborghini established this company with an objective of manufacturing a refine grand touring car to match the illustrious offerings of its prime contemporary, the Ferrari. One of the first Lamborghini models was the 350GT. It had the reputation of being the ultimate in refinement, power and comfort.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "The Miura Sports Coupe revolutionised the racing car manufacturing sector with the introduction of the rear mid-engine and the rear wheel drive. As of 2018, there are three Lamborghini models, of which two are mid-engine two-seater sports cars, namely the Aventador S and the Huracan. The Aventador has the marquee V-12 engine whereas the V-10 engine powers the Huracan. With the aim of doubling its sales, the company has introduced the twin-turbo V-8 engine powered Lamborghini SUV, Urus. It has a front engine, all-wheel drive layout.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Ferruccio Lamborghini had a liking for bull breeds. It explains the selecting of the raging bull as the Lamborghini emblem. The obsession with bull breeds did not end there. Except for the first two Lamborghinis, all Lamborghini models have the names of bulls. The Miura the Diablo the Gallardo and the Islero are all bull breeds. The trend continues even today with Aventador and the Lamborghini new model, Urus.",
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
        activeDotColor: Color.fromARGB(255, 254, 167, 0),
        dotColor: Colors.black12,
      ),
    );
  }
}
