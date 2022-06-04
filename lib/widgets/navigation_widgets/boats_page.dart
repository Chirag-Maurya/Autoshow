import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:AutoShow/widgets/boats/malibu_page.dart';
import 'package:AutoShow/widgets/boats/mastercraft_page.dart';
import 'package:AutoShow/widgets/boats/royalcaribbean_page.dart';
import 'package:AutoShow/widgets/models/machines.dart';
import 'package:AutoShow/widgets/navigation_drawer_widget.dart';

class BoatsPage extends StatelessWidget {
  const BoatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Machines> boatBrands = [
      Machines(
        manufacturer: "Malibu Boats, Inc",
        image:
            "https://marvel-b1-cdn.bc0a.com/f00000000189934/cdn.malibuboats.com/2021/Models/25%20LSV/Homepage/homepage_Series_hero_MXZ_Series-min.jpg",
      ),
      Machines(
        manufacturer: "MasterCraft",
        image: "https://teamtalk.mastercraft.com/filedata/fetch?id=2451854",
      ),
      Machines(
        manufacturer: "Royal Caribbean Cruises Ltd.",
        image:
            "https://www.jobcruise.ro/_upload/content/images/large/10_2013-02-27-11_25_41_en.jpg",
      ),
    ];

    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            'BOATS',
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: boatBrands.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => selectedItem(context, index),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.network(
                      boatBrands[index].image,
                    ),
                    Text(
                      boatBrands[index].manufacturer,
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ));
  }

  selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MalibuPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MasterCraftPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RoyalCaribbeanPage(),
        ));
        break;
    }
  }
}
