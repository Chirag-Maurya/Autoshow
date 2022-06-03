import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VolvoPage extends StatefulWidget {
  const VolvoPage({Key? key}) : super(key: key);

  @override
  State<VolvoPage> createState() => _VolvoPageState();
}

class _VolvoPageState extends State<VolvoPage> {
  int activeIndex = 0;
  final images = [
    "https://assets.volvo.com/is/image/VolvoInformationTechnologyAB/trucks-volvo-fh16-introimg?qlt=82&wid=1440&ts=1582779867513&dpr=off&fit=constrain",
    "https://assets.volvo.com/is/image/VolvoInformationTechnologyAB/trucks-volvo-fh-introimg?qlt=82&wid=1440&ts=1582779941054&dpr=off&fit=constrain",
    "https://www.volvotrucks.com/content/dam/volvo-trucks/markets/master/home/news/press-releases/2021/apr/volvo-trucks-now-ready-to-electrify/volvo-trucks-now-ready-to-electrify-image1.jpg",
    "https://media.glassdoor.com/l/36/13/25/27/volvo-truck.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Volvo",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 24, 40, 113)),
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
                  "About Volvo",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Volvo is the world’s second-largest producer of heavy-duty trucks employing more than 52000 professionals in its production and sales facilities all across the globe. The Swedish auto-giant has its headquarter at Gothenburg and rolled out its first truck in 1928. The company gets its commercial vehicles assembled at factories spread across 15 countries including Sweden, Belgium, Brazil, India and the USA. Volvo started its Indian operation as a wholly-owned subsidiary of Swedish AB Volvo company in 1998 with its head office at Bangalore, in Karnataka. In the last 21 years, it has remained committed to producing world-class heavy-duty commercial vehicles keeping in mind its efficiency, uptime, safety and comfort.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Volvo manufactures a range of technologically advanced trucks, tippers, and tractors for the Indian market. Some of its top-rolling commercial vehicles include Volvo FMX 440, Volvo FH 520 Puller and Volvo FM 480. Caring for the environment is a key concern in Volvo; since 1970 they are producing Volvo trucks with a 90 per cent reduction in the emission of air pollutants and a 40 per cent decrease in fuel consumption. The Swedish auto giant has also started manufacturing Euro 6 compliant vehicles globally and BS-IV trucks in India.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Volvo Trucks and fossil-free steels",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Volvo Trucks becomes the first auto manufacturer in the world to use fossil-free steel in its trucks. The Swedish truck manufacturer has said that the steel has been produced by SSAB and it has been used in heavy-duty all-electric Volvo trucks. The truck manufacturer also claims that this fossil-free steel has been produced using completely new technology, using hydrogen. The automaker claims that the fossil-free steel produced with hydrogen will be used in the frame rails, upon which all the main components are mounted. It also said that as the availability of fossil-free steel increases, it will be introduced in other parts of the trucks.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Volvo Trucks claims that with this strategy 90 per cent of the vehicles can be recycled. It claims that currently, around 30 per cent of the materials of the new trucks come from recycled materials. Speaking about this strategy, Jessica Sandstrom said that the auto company is striving to further minimize its climate footprint.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Volvo group has been emphasising using fossil-free steel in its vehicles for quite some time. The step comes as part of that strategy. As part of its greater target of achieving carbon neutrality across the supply chain and manufacturing process, Volvo has been emphasising using green hydrogen for steel production for its vehicles. Speaking about using the fossil-free steel in the Volvo electric trucks, the automaker claims that it comes with a much lower climate impact compared to conventionally produced steel. It also said that the small scale introduction of the fossil-free steel in the automaker's electric trucks will commence in the third quarter of 2022.",
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
        activeDotColor: Color.fromARGB(255, 24, 40, 113),
        dotColor: Colors.black12,
      ),
    );
  }
}
