import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoeingPage extends StatefulWidget {
  const BoeingPage({Key? key}) : super(key: key);

  @override
  State<BoeingPage> createState() => _BoeingPageState();
}

class _BoeingPageState extends State<BoeingPage> {
  int activeIndex = 0;
  final images = [
    "https://cdn.cnn.com/cnnnext/dam/assets/201221165522-boeing-737-crisis---737-8---boeing-full-169.jpg",
    "https://www.airdatanews.com/wp-content/uploads/2020/04/777x-flying-wh001.jpg",
    "https://s2.q4cdn.com/661678649/files/images/airplanes/747_8I.jpg",
    "https://global.kawasaki.com/en/upload_images/img_aero_A41_01.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Boeing",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 57, 156)),
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
                  "About Boeing",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Boeing Company, American aerospace company—the world’s largest—that is the foremost manufacturer of commercial jet transports. It is also a leading producer of military aircraft, helicopters, space vehicles, and missiles, a standing significantly enhanced with the company’s acquisition of the aerospace and defense units of Rockwell International Corporation in 1996 and its merger with McDonnell Douglas Corporation in 1997. Formerly Boeing Airplane Company, the firm assumed its current name in 1961 to reflect its expansion into fields beyond aircraft manufacture. Headquarters were in Seattle until 2001, when Boeing relocated to Chicago.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "As a leading global aerospace company, Boeing develops, manufactures and services commercial airplanes, defense products and space systems for customers in more than 150 countries. As a top U.S. exporter, the company leverages the talents of a global supplier base to advance economic opportunity, sustainability and community impact. Boeing’s diverse team is committed to innovating for the future, leading with sustainability, and cultivating a culture based on the company’s core values of safety, quality and integrity.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More about Boeing",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Boeing has a long tradition of aerospace leadership and innovation. The company continues to expand its product line and services to meet emerging customer needs. Its broad range of capabilities includes creating new, more efficient members of its commercial airplane family; designing, building and integrating military platforms and defense systems; creating advanced technology solutions; and arranging innovative financing and service options for customers. With corporate offices near Washington, D.C., Boeing employs more than 140,000 people across the United States and in more than 65 countries. This represents one of the most diverse, talented and innovative workforces anywhere. Our enterprise also leverages the talents of hundreds of thousands more skilled people working for Boeing suppliers worldwide.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Boeing is organized into three business units: Commercial Airplanes; Defense, Space & Security; and Boeing Global Services, which began operations July 1, 2017.  Supporting these units is Boeing Capital Corporation, a global provider of financing solutions.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "In addition, functional organizations working across the company focus on engineering and program management; technology and development-program execution; advanced design and manufacturing systems; safety, finance, quality and productivity improvement and information technology.",
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
        activeDotColor: Color.fromARGB(255, 0, 57, 156),
        dotColor: Colors.black12,
      ),
    );
  }
}
