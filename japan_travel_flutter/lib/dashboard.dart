import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japan_travel_flutter/detailsPage.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Center(
                  child: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                ),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFD4F99)),
              ),
              Text(
                "HOME",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    textStyle: TextStyle(color: Colors.white)),
              ),
              Container(
                child: Center(
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF323232)),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: MediaQuery.of(context).size.height - 176,
          child: ListView(
            children: <Widget>[
              buildListItem('images/japan.jpg', 'Japan',
                  'Explore the land of the rising sun'),
              buildListItem('images/canada.jpg', 'Canada',
                  'Explore the vast forestes of Canada'),
            ],
          ),
        )
      ],
    );
  }

  buildListItem(String imgPath, String country, String description) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken))),
          ),
          Container(
            height: 300,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    country,
                    style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    description,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        textStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage(
                                imagePath: imgPath,
                                title: country,
                              )));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Explore Now',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              textStyle: TextStyle(color: Color(0xFFFD4F99))),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      width: 125,
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
