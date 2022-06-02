import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_sample/widgets/cars/ferrarri_page.dart';
import 'package:my_sample/widgets/cars/ford_page.dart';
import 'package:my_sample/widgets/cars/laborghini_page.dart';
import 'package:my_sample/widgets/models/machines.dart';
import 'package:my_sample/widgets/navigation_drawer_widget.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Machines> carBrands = [
      Machines(
        manufacturer: "Ferrari",
        image:
            "https://cdn.vox-cdn.com/thumbor/beBJA7JX9NCA3K2OOll0VAvqys4=/0x60:1920x1020/fit-in/1200x600/cdn.vox-cdn.com/uploads/chorus_asset/file/22730081/Fortnite_Ferrari_In_Game_Screenshot_1920x1080.jpg",
      ),
      Machines(
        manufacturer: "Lamborghini",
        image:
            "https://st4.depositphotos.com/3593445/38373/i/600/depositphotos_383735820-stock-photo-miami-florida-usa-june-2020.jpg",
      ),
      Machines(
        manufacturer: "Ford",
        image:
            "https://browsecat.net/sites/default/files/ford-logo-wallpapers-73538-177896-8556367.png",
      ),
    ];
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            'CARS',
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: carBrands.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => selectedItem(context, index),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.network(
                      carBrands[index].image,
                    ),
                    Text(
                      carBrands[index].manufacturer,
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
          builder: (context) => FerrariPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LamborghiniPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FordPage(),
        ));
        break;
    }
  }
}
