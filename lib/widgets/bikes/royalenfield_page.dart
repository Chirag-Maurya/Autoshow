import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RoyalEnfieldPage extends StatefulWidget {
  const RoyalEnfieldPage({Key? key}) : super(key: key);

  @override
  State<RoyalEnfieldPage> createState() => _RoyalEnfieldPageState();
}

class _RoyalEnfieldPageState extends State<RoyalEnfieldPage> {
  int activeIndex = 0;
  final images = [
    "https://motorbikewriter.com/wp-content/uploads/2021/09/2022-royal-enfield-classic-350-first-look-retro-motorcycle-india-7.jpg",
    "https://www.royalenfield.com/content/dam/royal-enfield/india/motorcycles/landing/continental-gt-new.jpg",
    "https://cdn.kalingatv.com/wp-content/uploads/2021/08/Royal-Enfield-dual-channel.jpg",
    "https://www.drivespark.com/img/2021/05/royal-enfield-sultan-custom-650-twin-1-1620659598.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Royal Enfield",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 235, 171, 0)),
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
                  "About Royal Enfield",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Royal Enfield is a well-known automobile company that primarily deals in manufacturing of motor cycles and cycles. Apart from that, it produces lawnmowers, stationery engines and rifles. The company's motto, “Made Like A Gun”, reflects its weapon making legacy. Royal Enfield is a company based in India with its headquarters in Chennai. The company was founded as Enfield Manufacturing Company Limited in 1890. It produced its first ever bike under the brand name of \'Royal Enfield\' in the same year in Redditch, Worcestershire, England. Albert Eadie and Robert Walker Smith were the founders of Enfield Manufacturing Company Limited that ceased to exist after 1971.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Although Enfield sold its first bike in India in 1949, it was not before 1955 that India's own Royal Enfield manufacturing establishment came into existence. In 1955, Redditch Company and Madras Motors became partners and formed Enfield India, which is currently based in Chennai. The present day Royal Enfield company is a subsidiary of the Indian automobile stalwart Eicher Motors Limited. Dr. Venki Padmanabhan is the CEO of Royal Enfiled India. Royal Enfield has been the most trusted high capacity bike and the most favourite of the Indian government for the past six decades. The Government of India had a requirement of a powerful, high capacity, strong and reliable vehicle for the Indian Army and Indian Police for patrolling purposes. Royal Enfield was the name the Indian government counted on. In 1965, 800 350cc Royal Enfield Bullet model units were ordered by the Government of India. The original Enfield Manufacturing Company Limited went defunct in 1971; however, Enfield India just kept on growing in stature and repute.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More on Royal Enfield",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "The design of Royal Enfield bikes of 2018 have strong resemblance to products that were sold almost 6-7 decades back. Royal Enfield Bullet holds the title of longest surviving motorcycle design. The company had worked close to Royal Small Arms Factory as they supplied precision parts for guns. Enfield Motor Company started a separate motorcycle and car division during that phase. Today, the brand is one among top profitable two wheeler brands around the world. They were once in talks to buy Ducati when Volkswagen was preparing to sell the Italian superbike brand to compensate for the losses through dieselgate scandal.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Royal Enfield Classic 350 is their most selling present day model that carries the same frame as Bullet series of motorcycles in India. The addition of modern features like disc brakes and electric starter helped them fetch more buyers with additional comfort and safety demands. Enfield of India actually started in 1955 by importing parts and assembling them in Chennai. Just two years later, they imported the machines that helped them with local production and thus, number of bikes sold increased with passing years. Enfield Cycle Company, the parent brand from which RE originated, was approached by British army to manufacture military grade products for Second World War.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "These bikes were excellent for all terrain riding and some were even designed to be dropped by a parachute. During this era, the factory was built underground to stay safe from surface level bombing. The present generation engines are a derivative of older RE products and they still offer unmatchable power and reliability.",
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
        activeDotColor: Color.fromARGB(255, 235, 171, 0),
        dotColor: Colors.black12,
      ),
    );
  }
}
