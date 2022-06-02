import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_sample/widgets/models/machines.dart';
import 'package:my_sample/widgets/navigation_drawer_widget.dart';
import 'package:my_sample/widgets/planes/airbus_page.dart';
import 'package:my_sample/widgets/planes/boeing_page.dart';
import 'package:my_sample/widgets/planes/embraer_page.dart';

class PlanesPage extends StatelessWidget {
  const PlanesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Machines> planeBrands = [
      Machines(
        manufacturer: "Airbus",
        image:
            "https://cdn.dribbble.com/users/721601/screenshots/6271064/airbus-2019---plane-front5.png",
      ),
      Machines(
        manufacturer: "Boeing",
        image:
            "https://static.timesofisrael.com/www/uploads/2017/11/000_U74PE-1-e1510486792599.jpg",
      ),
      Machines(
        manufacturer: "Embraer",
        image:
            "https://flyingmag.sfo3.digitaloceanspaces.com/flyingma/wp-content/uploads/2021/10/22111241/AirSprint-Praetor-5-2100x1401-ee55d1c8-ad09-4ec6-81b8-09e5ebf0c296-1.jpg",
      ),
    ];

    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            'PLANES',
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: planeBrands.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => selectedItem(context, index),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.network(
                      planeBrands[index].image,
                    ),
                    Text(
                      planeBrands[index].manufacturer,
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
          builder: (context) => AirbusPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BoeingPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EmbraerPage(),
        ));
        break;
    }
  }
}
