import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_sample/widgets/bikes/ducati_page.dart';
import 'package:my_sample/widgets/bikes/kawasaki%20_page.dart';
import 'package:my_sample/widgets/bikes/royalenfield_page.dart';

import 'package:my_sample/widgets/models/machines.dart';

import 'package:my_sample/widgets/navigation_drawer_widget.dart';

class BikePage extends StatelessWidget {
  const BikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Machines> bikeBrands = [
      Machines(
        manufacturer: "Ducati",
        image:
            "https://cdn.visordown.com/styles/v2_normal/s3/field/image/30%20MULTISTRADA%201260%20S_UC30096_High.jpg",
      ),
      Machines(
        manufacturer: "Kawasaki",
        image:
            "https://c0.wallpaperflare.com/preview/340/425/248/kawasaki-motorcycle-logo-brand.jpg",
      ),
      Machines(
        manufacturer: "Royal Enfield",
        image:
            "https://i.pinimg.com/originals/f3/29/10/f329108bb50d4232869facb8dbaca222.jpg",
      ),
    ];
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            'BIKES',
            style: GoogleFonts.robotoSlab(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView.builder(
          itemCount: bikeBrands.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () => selectedItem(context, index),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Image.network(
                      bikeBrands[index].image,
                    ),
                    Text(
                      bikeBrands[index].manufacturer,
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
          builder: (context) => DucatiPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => KawasakiPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RoyalEnfieldPage(),
        ));
        break;
    }
  }
}
