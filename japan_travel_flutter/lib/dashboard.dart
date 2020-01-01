import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          height: 20,
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
          height: MediaQuery.of(context).size.height - 156,
        )
      ],
    );
  }
}
