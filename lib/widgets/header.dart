import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String description;
  final double height;
  final String logo;
  final double logoWidth;

  Header({this.description, this.height, this.logo, this.logoWidth});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20),
        height: height == null ? 320 : height,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.teal, Colors.teal[900]])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Estuda+",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontSize: 22)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            logo != null ? 
            Expanded(
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SvgPicture.asset(
                    logo,
                    width: logoWidth,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topLeft,
                  ),
                )
              ],
            )) : SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
