import 'package:medicall_app2/model/hospital.dart';
import 'package:medicall_app2/provider/hospital_notifier.dart';
import 'package:medicall_app2/widgets/contact_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HospitalList extends StatelessWidget {
  const HospitalList({super.key});

  @override
  Widget build(BuildContext context) {
    var hospitalNoti = Provider.of<HospitalNotifier>(context);
    List<Hospital> hospitals = hospitalNoti.hospitals;
    return ListView.builder(
      itemCount: hospitals.length,
      itemBuilder: (context, index) {
        var hospital = hospitals[index];
        return ContactItem(hospital: hospital);
      },
    );
  }
}
