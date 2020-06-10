import 'package:all_in_one_flutter_app/constants.dart';
import 'package:all_in_one_flutter_app/models/doctor.dart';
import 'package:flutter/material.dart';

class ConsultationCard extends StatelessWidget {
  final Consultation consultation;

  const ConsultationCard({Key key, this.consultation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        left: 18,
        bottom: 5,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Container(
          width: 250,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 70,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kGreen,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        12,
                      ),
                      bottomLeft: Radius.circular(
                        12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
