import 'package:all_in_one_flutter_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Specialist extends StatelessWidget {
  final String name;
  final String doctor;
  final String icon;
  final Color color;
  Specialist({this.color, this.doctor, this.icon, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      margin: EdgeInsets.only(left: 18.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        color: color,
      ),
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            icon,
            width: 45.0,
            color: Colors.white,
          ),
          SizedBox(height: 12.0),
          Text(
            name,
            textAlign: TextAlign.center,
            style: kTitleStyle.copyWith(
              color: Colors.white,
              height: 6.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text("$doctor Doctors",
              style: kSubtitleStyle.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
