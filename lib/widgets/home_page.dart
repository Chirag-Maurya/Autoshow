import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_sample/widgets/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  final brandIcons = [
    "assets/ferrari.png",
    "assets/lamborghini.png",
    "assets/ford.png",
    "assets/ducati.png",
    "assets/kawasaki.png",
    "assets/royal_enfield.png",
    "assets/tata.png",
    "assets/ashok_leyland.png",
    "assets/volvo.png",
    "assets/malibu.png",
    "assets/mastercraft.png",
    "assets/royal_caribbean.png",
    "assets/airbus.png",
    "assets/boeing.png",
    "assets/embraer.png",
  ];

  @override
  Widget build(BuildContext context) {
    double alignment = 4.0;
    double gridHeight = 10 * (brandIcons.length * alignment);
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'WELCOME TO AUTOSHOW',
          style: GoogleFonts.robotoSlab(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      "Autoshow",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "Your vehicle encyclopedia",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              Text(
                "Autoshow gives you all the information that you need to know aboue the bigest vehicle brands in the industry today. Get your knowledge on the largest and the most dominant companies around; learn how thaey started and what made them become the giants they are today. Satisfy your brainly curiosity and read about them here. This is your one-app stop for all brands.",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                ),
              ),
              Text(
                "Brands Covered",
                style: GoogleFonts.bebasNeue(
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: gridHeight,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: alignment,
                      mainAxisSpacing: alignment),
                  itemCount: brandIcons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(brandIcons[index]);
                  },
                  physics: ScrollPhysics(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
