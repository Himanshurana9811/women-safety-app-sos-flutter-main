import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/policeemergency.dart';

import 'emergencies/AmbulanceEmergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          PoliceEmergency(),
          AmbulanceEmergency(),
        ],
      ),
    );
  }
}
