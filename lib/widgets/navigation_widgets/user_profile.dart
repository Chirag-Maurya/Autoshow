import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:AutoShow/widgets/navigation_drawer_widget.dart';

class UserPage extends StatefulWidget {
  final String name;
  final email;
  final String image;
  final String created;
  final String lastSignIn;
  const UserPage(
      {Key? key,
      required this.name,
      required this.email,
      required this.image,
      required this.created,
      required this.lastSignIn})
      : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "MY PROFILE",
          style: GoogleFonts.robotoSlab(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200.0,
                child: buildBanner(),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 65),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(4, 9, 35, 1),
                        Color.fromRGBO(39, 105, 171, 1),
                      ],
                      begin: FractionalOffset.bottomCenter,
                      end: FractionalOffset.topCenter,
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          textAlign: TextAlign.center,
                          widget.name,
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          textAlign: TextAlign.center,
                          widget.email.toString(),
                          style: GoogleFonts.robotoCondensed(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 320.0,
                          height: 300.0,
                          child: Card(
                            color: Colors.grey[200],
                            elevation: 5,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "User Data:",
                                    style: GoogleFonts.robotoSlab(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 1,
                                  ),
                                  builduserData(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 130,
            child: buildImage(),
          ),
        ],
      ),
    );
  }

  buildImage() {
    final myImage = ExactAssetImage(widget.image);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: myImage,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
        ),
      ),
    );
  }

  buildBanner() {
    return Container(
      child: Image.asset(
        'assets/banner.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  builduserData() {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Name: ",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${widget.name}",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  color: Color.fromARGB(185, 90, 89, 89),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Email: ",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "${widget.email}",
                    style: GoogleFonts.robotoCondensed(
                      color: Color.fromARGB(185, 90, 89, 89),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Date Created: ",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${widget.created}",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  color: Color.fromARGB(185, 90, 89, 89),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Last Sign In: ",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${widget.lastSignIn}",
                style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  color: Color.fromARGB(185, 90, 89, 89),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
