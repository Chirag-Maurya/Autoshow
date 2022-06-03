import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TataPage extends StatefulWidget {
  const TataPage({Key? key}) : super(key: key);

  @override
  State<TataPage> createState() => _TataPageState();
}

class _TataPageState extends State<TataPage> {
  int activeIndex = 0;
  final images = [
    "https://i.pinimg.com/originals/d6/bc/47/d6bc4760a48c76becdb2b7370e2554f3.jpg",
    "https://c.ndtvimg.com/2020-08/ddama3fg_tata-motors-trucks_625x300_27_August_20.jpg",
    "https://www.constructionweekonline.in/cloud/2021/11/24/m6oJq8ZF-Prima-3530.K-1.jpg",
    "https://www.motorworldindia.com/wp-content/uploads/2017/04/Tata-Trucks-Supreme-Court-1-e1594643088321.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Tata",
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 72, 106, 174)),
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
                  "About Tata",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Tata Motors Ltd (NYSE: TTM; BSE: 500570 and 570001; NSE: TATAMOTORS and TATAMTRDVR), a USD 44 billion organisation. It is a leading global automobile manufacturer of cars, utility vehicles, pick-ups, trucks and buses. A part of the USD 110 billion Tata Group, Tata Motors is India’s largest and the only OEM offering extensive range of integrated, smart and e-mobility solutions. It has operations in India, the UK, South Korea, Thailand, South Africa and Indonesia through a strong global network of 134 subsidiaries, associate companies and joint ventures, including Jaguar Land Rover in the UK and Tata Daewoo in South Korea.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "With a focus on engineering and tech-enabled automotive solutions, catering to the future of mobility, Tata Motors is India’s market leader in commercial vehicles and among the top four in the passenger vehicles market. With ‘connecting aspirations’ at the core of its brand promise, the company’s innovation efforts are focused on developing pioneering technologies that are sustainable as well as suited to evolving aspirations of the market and customers. Tata Motors strives to bring new products that fire the imagination of GenNext customers, fuelled by state-of-the-art design and R&D centres located in India, UK, US, Italy and South Korea. Internationally, Tata commercial and passenger vehicles are marketed in countries, spread across Africa, Middle East, South Asia, South East Asia, South America, CIS, and Russia.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More on Tata Trucks ",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "The wide range of long-haul trucks from Tata Motors come with state-of-the-art technology and design that enable driver comfort and cost-efficiency, optimising returns for owners and operators. The mission of Tata Motors is to strive to remain the pioneer in the Indian commercial vehicle industry. The organisation leaves no stone unturned to offer the widest range of products and best-in-class solutions to improve overall profitability through levers of higher revenue generation and operating cost optimisation. With the advent of GST and implementation of various government policies, the industry is heading towards consolidation of loads, trucks covering more distance per day and long haulage.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Tata Motors’ long-haul trucks are industry leaders across segments starting with 19T GVW trucks in the medium commercial vehicle range to heavy-duty multi-axles at 28T, 35T, 42T, 48T and 49T GVW range of trucks, and 46T, 55T 4x2 and 55T 6x4 range of tractor trailers delivering superior solutions and value-for-road logistics across the country. Tata Motors’ long-haul trucks proved their mettle across all applications including the emerging e-commerce segment, and bulk and dense applications such as tankers; agriculture products; cement; coal; construction aggregates; clinkers; fly-ash; iron and steel; market logistics; and industrial goods; commanding market share leadership in their respective tonnage segments.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "These trucks are robust in design with long-haul trucking needs, offering higher engine torque and wider flat torque curve, enabling superior pick-up, acceleration, gradeability, faster and smoother drives on highways, thereby ensuring quicker turnaround time. Tata Motors’ long-haul trucks offer multiple engine platforms, including the company’s new generation 5.0L Turbotronn engine and Tata Cummins range of engines, across different nodes - the world’s largest selling commercial Euro6 engines - providing the durability and reliability needed for long distance travel.",
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
        activeDotColor: Color.fromARGB(255, 72, 106, 174),
        dotColor: Colors.black12,
      ),
    );
  }
}
