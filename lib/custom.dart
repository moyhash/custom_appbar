import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.deepPurple,
    centerTitle: true,
    elevation: 5,
    title: const Text(
      'Custom AppBar',
      style: TextStyle(
          color: Colors.white,
          letterSpacing: 0.55,
          fontSize: 22,
          fontWeight: FontWeight.w500),
    ),
    flexibleSpace: ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/navigator.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
        ),
      ),
    ),

    /* flexibleSpace: const ClipRRect(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
      child: Image(
        image: AssetImage('images/navigator.png'),
        fit: BoxFit.cover,
      ),
    ), */
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(50),
      ),
    ),
    leading: InkWell(
      onTap: () {},
      child: const Icon(
        Icons.subject,
        color: Colors.white,
        size: 24,
      ),
    ),
    actions: [
      InkWell(
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, left: 20),
        child: Row(
          children: [
            // Row children 1
            Stack(
              children: const [
                // Stack children 1
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black54,
                  child: Icon(
                    Icons.ac_unit_sharp,
                    color: Colors.yellow,
                  ),
                ),
                // Stack children 2
                //Container(width: 40, height: 30, color: Colors.white),
              ],
            ),
            // Row children 2
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'Voila Comment ',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.55,
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'ogicas@komoria.km',
                    style: TextStyle(
                        color: Colors.yellow,
                        letterSpacing: 0.55,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
