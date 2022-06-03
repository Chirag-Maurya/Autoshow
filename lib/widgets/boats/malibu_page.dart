import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MalibuPage extends StatefulWidget {
  const MalibuPage({Key? key}) : super(key: key);

  @override
  State<MalibuPage> createState() => _MalibuPageState();
}

class _MalibuPageState extends State<MalibuPage> {
  int activeIndex = 0;
  final images = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Malibu%2C_Interboot_2020%2C_Friedrichshafen_%28IB200183%29.jpg/1200px-Malibu%2C_Interboot_2020%2C_Friedrichshafen_%28IB200183%29.jpg",
    "https://editorial.pxcrush.net/boatsales/general/editorial/malibu-wakesetter-23-lsv_8553.jpg?width=1024&height=683",
    "https://www.activewake.com/wp-content/uploads/2020/07/2021-Malibu-23-LSV-Boat_35.jpg",
    "https://boatdeck.npgcdn.net/media/20191120113635-f6a8e5c2fafa05d39c71c26abfeeab6453b7fd89ecd760485d19747141c04f21/DSCN6201.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Malibu Boats, Inc",
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
                  "About Malibu Boats, Inc",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Malibu Boats, Inc. engages in the design, engineering, manufacturing, marketing, and sale of a range of recreational powerboats. It operates through three segments: Malibu, Saltwater Fishing, and Cobalt. The company offers performance sport boats, and sterndrive and outboard boats under the Malibu, Axis, Pursuit, Maverick, Cobia, Pathfinder, Hewes, and Cobalt brands. Its products are used for a range of recreational boating activities, including water sports, such as water skiing, wakeboarding, and wake surfing, as well as general recreational boating and fishing. The company sells its products through independent dealers in North America, Europe, Asia, the Middle East, South America, South Africa, and Australia/New Zealand. Malibu Boats, Inc. was founded in 1982 and is headquartered in Loudon, Tennessee.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Malibu Boats, Inc. designs, manufactures, and markets sport boats. The Company produces sport boats used for water sports including water skiing, wakeboarding, and wake surfing, as well as for general recreational boating use. Malibu Boats offers its products in the United States.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "More about Malibu Boats",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "The Malibu segment includes manufacturing, distributing, marketing and sale of Malibu and Axis performance sports boats throughout the world. The Saltwater Fishing segment includes manufacturing, distributing, marketing and sales throughout the world of Pursuit boats and the Maverick Boat Group boats (Maverick, Cobia, Pathfinder and Hewes). The Cobalt segment includes manufacturing, distributing, marketing, and sale of Cobalt boats throughout the world. The Company's boats are used for a range of recreational boating activities including, among others, water sports such as water skiing, wakeboarding, and wake surfing, as well as general recreational boating and fishing. It sells its boats under the Malibu, Axis, Pursuit, Maverick, Cobia, Pathfinder, Hewes, and Cobalt brand names.",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Based in Loudon, Tennessee, Malibu Boats, Inc. (MBUU) is a leading designer, manufacturer and marketer of a diverse range of recreational powerboats, including performance sport, sterndrive and outboard boats. Malibu Boats, Inc. is the market leader in the performance sport boat category through its Malibu and Axis boat brands, the leader in the 20’ - 40’ segment of the sterndrive boat category through its Cobalt brand, and in a leading position in the saltwater fishing boat market with its Pursuit and Cobia offshore boats and Pathfinder, Maverick, and Hewes flats and bay boat brands. A pre-eminent innovator in the powerboat industry, Malibu Boats, Inc. designs products that appeal to an expanding range of recreational boaters, fisherman and water sports enthusiasts whose passion for boating is a key component of their active lifestyles.",
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
