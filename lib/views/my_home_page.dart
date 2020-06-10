import 'package:all_in_one_flutter_app/models/doctor.dart';
import 'package:all_in_one_flutter_app/views/specialist.dart';
import 'package:flutter/material.dart';
import 'package:all_in_one_flutter_app/constants.dart';
import 'package:flutter/rendering.dart';

import 'consulation_card.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: ListTile(
            leading: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "bandi.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              "Melody",
              style: kTitleStyle,
            ),
            subtitle: Text(
              "Find your Doctor's nearby",
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: kGrey,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.date_range,
                  color: kGreen,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: kBlack.withOpacity(.2),
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffix: Icon(
                    Icons.search,
                    color: kBlack,
                  ),
                  hintText: "Search   doctors and categories",
                  hintStyle: kSubtitleStyle.copyWith(
                    color: kBlack.withOpacity(.4),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 2,
              ),
              child: Text(
                "Specialist One",
                //style: k
                style: kTitleStyle,
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Specialist(
                    color: kGreen,
                    doctor: "27",
                    icon: "assets/lungs.svg",
                    name: "Cardio Specialist",
                  ),
                  Specialist(
                    color: kGreen,
                    doctor: "27",
                    icon: "assets/opthamology.svg",
                    name: "Cardio Specialist",
                  ),
                  Specialist(
                    color: kGreen,
                    doctor: "27",
                    icon: "assets/dentist.svg",
                    name: "Cardio Specialist",
                  ),
                  Specialist(
                    color: kGreen,
                    doctor: "27",
                    icon: "assets/wheelchair.svg",
                    name: "Cardio Specialist",
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: ListView.builder(
                      itemCount: doctorList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = consultationList[index];
                        return ConsultationCard();
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
