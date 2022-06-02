import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FordPage extends StatefulWidget {
  const FordPage({Key? key}) : super(key: key);

  @override
  State<FordPage> createState() => _FordPageState();
}

class _FordPageState extends State<FordPage> {
  int activeIndex = 0;
  final images = [
    "https://www.ford.es/content/dam/guxeu/rhd/central/cars/gt/billboard/ford-gt-eu-All-NewFordGT_26_HR-21x9-2160x925-bb-generations.jpg.renditions.original.png",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202203/Next_Gen_Everest_Sport_Front_4.jpg?7T5mYwCCnp8iQkd0AtVDYy01jKOi6zWh&size=770:433",
    "https://www.cartoq.com/wp-content/uploads/2022/02/Ford-mache_1.jpg",
    "https://images.netdirector.co.uk/gforces-auto/image/upload/w_375,h_250,dpr_2.0,q_auto,c_fill,f_auto,fl_lossy/auto-client/cdab787769ed172471dfc47f0611ac40/426_da_2a_v2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Ford",
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
                  "About Ford",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Ford Motor Company is a multinational automobile manufacturer with its roots in America. It manufactures and sells automobiles, trucks, buses and tractors across the world. In the past, big automaker brands like Aston Martin, Jaguar, Land Rover, Mazda, Volvo, Continental, Edsel, Merkur, Mercury and FPV were marques of Ford. Currently, Lincoln and Troller (Brazilian SUV manufacturer) are the active Ford marques. Ford has its headquarters in Dearborn, Michigan, in U.S.A.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "In 1901, the businessman Henry Ford attempted to launch an automobile company in the name of Henry Ford Company, but he left the company with the rights to his name and the company was renamed  Cadillac Motor Company (now a sub-division of General Motors). Two years later since his first attempt, with the help of 12 employees, Henry launched the Ford Motor Company. Founders of Dodge, John and Horace Dodge, were among the 12 people who supported the 39-year-old Henry Ford in his highly ambitious venture.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Growth of Ford Motor Company in the 20th Century",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "After its launch in 1903, Ford only manufactured a few cars every day, built by a group of men who used supplier parts to assemble the vehicle. In the first five years of its operation, Ford produced eight models, the A, B, C, F, N, K, S and R, which received good response as hundreds to few thousand units of each model were sold annually. The Model T and its successor Model A were the most revered models offered by Ford for 20 years.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Henry Ford wanted to challenge the then giants like General Motors (GM), Cadillac and Packard, so he created the Mercury as a competitor of GM’s Pontiac, Buick and Oldsmobile and took over the Lincoln Motor Company in 1922 as a step for Ford to foray into the luxury car segment of the market. In 1929, the Soviet Union approached Ford and contracted him to establish the Gorky Automobile Plant in Russia, which greatly impacted the industrialization in the country. The Model A and Model AA were mass produced at the plant in Russia. In 1932, Ford was credited as the manufacturer of the first low-price V8 engine (flathead V8 or flatty) equipped cars, Model 18 and Model 40.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "To expand its reach in the luxury sector of automobiles, Ford established its Continental division, which became famous for its Continental Mark II model in 1955. The 1956-1957 period saw the introduction of many new features in the Ford cars like optional front seat belts, rear seat belts (first time in a car), deep-dish steering wheel and child proof door locks. Ford’s attempt of running its subsidiaries Continental, Edsel, Mercury and Lincoln as Lincoln-Mercury-Edsel (M-E-L) was thwarted by the plunge in the sales of Continental models; and after the dissolution of Edsel, Ford reverted to Lincoln-Mercury. The now legendary and highly respected Ford Mustang was launched on 17 April 1964 in New York, and the rest is history. The strides that this particular model took were astounding. The following year, seat belt reminder light was introduced in Ford cars. The last two decades of the 20th century saw Ford acquiring multiple infamous automobile companies. After Mazda became a Ford marque in 1974, Ford became a major automaker as they acquired Merkur from U.S.A., Jaguar, Land Rover and Aston Martin from the UK, and Volvo from Sweden in the 15-year period from 1985 to 2000.",
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
