import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:AutoShow/widgets/models/machines.dart';
import 'package:AutoShow/widgets/navigation_drawer_widget.dart';
import 'package:AutoShow/widgets/trucks/ashokleyland.dart';
import 'package:AutoShow/widgets/trucks/tata_page.dart';
import 'package:AutoShow/widgets/trucks/volvo.dart';

class TruckPage extends StatelessWidget {
  const TruckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Machines> truckBrands = [
      Machines(
        manufacturer: "Tata",
        image:
            "https://oibnews.com/wp-content/uploads/2020/05/95865e16b176faad30ebcee164bc9b35.jpg",
      ),
      Machines(
        manufacturer: "Ashok Leyland",
        image:
            "https://c.ndtvimg.com/2020-04/l6939do_ashok-leyland-employees-contribute-rs-41-lakh-to-pm-cares-fund_625x300_30_April_20.jpg",
      ),
      Machines(
        manufacturer: "Volvo",
        image:
            "https://listcarbrands.com/wp-content/uploads/2016/02/Volvo-trucks-logo.png",
      ),
    ];

    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            'TRUCKS',
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: truckBrands.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => selectedItem(context, index),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.network(
                      truckBrands[index].image,
                    ),
                    Text(
                      truckBrands[index].manufacturer,
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
          builder: (context) => TataPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AshokLeylandPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VolvoPage(),
        ));
        break;
    }
  }
}
