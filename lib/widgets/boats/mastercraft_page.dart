import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MasterCraftPage extends StatefulWidget {
  const MasterCraftPage({Key? key}) : super(key: key);

  @override
  State<MasterCraftPage> createState() => _MasterCraftPageState();
}

class _MasterCraftPageState extends State<MasterCraftPage> {
  int activeIndex = 0;

  final images = [
    "https://www.mastercraft.com/media/soelnrmx/image-3.png",
    "https://www.skiersmarine.com/wp-content/uploads/2020/05/mastercraft-xt25-lifestyle.jpg",
    "https://jetthrusteramerica.com/wp-content/uploads/2021/09/MastercraftBoats.jpg",
    "https://i.pinimg.com/originals/31/6e/4d/316e4df71c8aa6c3f240919a419f9733.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "MasterCraft",
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
                  "About MasterCraft",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "MasterCraft has been shaping the boating industry since 1968. More than four decades after the original MasterCraft made its debut, our goal remains the same - to continue building the world's best ski, wakeboard and luxury performance powerboats, year after year. Our Vonore, Tennessee plants are staffed with dedicated professionals, working on your next boat.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "MasterCraft is dedicated to customer satisfaction by providing products and services that exceed the requirements and expectations of our internal and external customers. MasterCraft is dedicated to achieving excellence in environmental, health and safety (EHS) protection, prevention, and regulatory compliance.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More about MasterCraft",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "MasterCraft Boat Company is committed to improving the boating experience of our customers. From delivering innovations that improves enjoyment on the water, to offering products that promote rapid development of skills, MasterCraft is committed to generating memories that last a lifetime. To accomplish this, MasterCraft will utilize a comprehensive product development process to ensure the introduction of the most relevant product(s) possible, year after year. MasterCraft will engage in operational excellence to deploy flexible and effective production systems that ensure we design-in and build the highest level of quality.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "MasterCraft is a world-renowned innovator, designer, manufacturer, and marketer of premium performance sport boats. Founded in 1968, MasterCraft has cultivated its iconic brand image through a rich history of industry-leading innovation, and more than four decades after the original MasterCraft made its debut, the company’s goal remains the same – to continue building the world’s best ski, wakeboard, wake surf and luxury performance powerboats.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Headquartered in Vonore, TN, MasterCraft Boat Holdings, Inc. (NASDAQ: MCFT) is a leading innovator, designer, manufacturer and marketer of premium recreational powerboats through its four wholly-owned brands, MasterCraft, NauticStar, Crest and Aviara Boats. Through these four brands, MasterCraft Boat Holdings has leading market share positions in three of the fastest-growing segments of the powerboat industry – performance sport boats, outboard saltwater fishing, pontoon boats – while entering the large, growing luxury day boat segment. For more information about MasterCraft Boat Holdings",
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
