import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:AutoShow/widgets/navigation_widgets/bike_page.dart';
import 'package:AutoShow/widgets/navigation_widgets/boats_page.dart';
import 'package:AutoShow/widgets/navigation_widgets/car_page.dart';
import 'package:AutoShow/widgets/home_page.dart';
import 'package:AutoShow/widgets/navigation_widgets/planes_page.dart';
import 'package:AutoShow/widgets/navigation_widgets/truck_page.dart';
import 'package:AutoShow/widgets/navigation_widgets/user_profile.dart';

class NavigationDrawerWidget extends StatefulWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    var emailString = user.email.toString();

    final created =
        DateFormat("dd/MM/yyyy").format(user.metadata.creationTime!).toString();
    final lastSignIn = DateFormat("dd/MM/yyyy HH:mm")
        .format(user.metadata.lastSignInTime!)
        .toString();

    final name = emailString.split("@")[0];
    final email = user.email;
    final image = "assets/image.jpg";

    return Drawer(
      child: Material(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            buildHeader(
                image: image,
                name: name,
                email: email,
                created: created,
                lastSignIn: lastSignIn,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => UserPage(
                          name: name,
                          email: email,
                          image: image,
                          created: created,
                          lastSignIn: lastSignIn,
                        ))))),
            buildMenuItem(
              text: "Home Page",
              icon: Icons.home_outlined,
              onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox(height: 15),
            Divider(color: Colors.white70),
            const SizedBox(height: 20),
            buildMenuItem(
              text: "Cars",
              icon: Icons.car_rental_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "Bikes",
              icon: Icons.bike_scooter_outlined,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "Trucks",
              icon: Icons.fire_truck_outlined,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Boats",
              icon: Icons.water_drop_outlined,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: "Planes",
              icon: Icons.airlines_outlined,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "Sign Out",
              icon: Icons.settings_power_outlined,
              onClicked: () async => await FirebaseAuth.instance.signOut(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int i) {
    Navigator.of(context).pop();

    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CarPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BikePage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TruckPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BoatsPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PlanesPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
    }
  }

  buildHeader(
          {required var image,
          required String name,
          required var email,
          required final created,
          required final lastSignIn,
          required VoidCallback onClicked}) =>
      InkWell(
        onTap: onClicked,
        child: Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 30, backgroundImage: ExactAssetImage(image)),
                SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ]),
              ],
            )),
      );
}
