import 'package:femm/models/track_cycle.dart';
import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Cycle"),
        centerTitle: true,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.checklist_rtl,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: Color(0xffF9EFF6),
        ),
        child: ListView(
          children: [

            _buildIndicator<FlowIntensity>(FlowIntensity.values,
                getFlowIntensityIcon, "Flow Intensity", 0xFFd50000),
            _buildIndicator<BloodColor>(BloodColor.values, getBloodColorIcon,
                "Blood Color", 0xFFD32F2F),
            _buildIndicator<PainLevel>(
                PainLevel.values, getPainLevelIcon, "Pain Level", 0xFF1976D2),
            _buildIndicator<Symptoms>(
                Symptoms.values, getSymptomsIcon, "Symptoms", 0xFF388E3C),
            _buildIndicator<Mood>(Mood.values, getMoodIcon, "Mood", 0xFF8E24AA),
            _buildIndicator<DischargeType>(DischargeType.values,
                getDischargeTypeIcon, "DischargeType", 0xFF00796B),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

String formatEnum(String str) {
  int ind = 0;

  for (int i = 0; i < str.length; i++) {
    if (str.codeUnitAt(i) >= 65 && str.codeUnitAt(i) <= 90) {
      ind = i;
      break;
    }
  }
  if (ind == 0) {
    return "${str[0].toUpperCase()}${str.substring(1)}";
  }

  String one = str.substring(0, ind);
  String two = str.substring(ind);
  return "${one[0].toUpperCase()}${one.substring(1)} $two";
}

Widget _buildIndicator<T>(List<T> enumValues, IconData Function(T string) icon,
    String text, int colorCode) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,
      ),
      Text(text, style: TextStyle(
        fontSize: 18,
      ),),
      SizedBox(
        height: 5,
      ),
      Wrap(
        spacing: 10,
        children: [
          for (final i in enumValues)
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(colorCode).withOpacity(0.7),
              ),
              onPressed: () {},
              label: Text(
                formatEnum(i.toString().split(".").last),
              ),
              icon: Icon(
                icon(i),
              ),
            )
        ],
      ),
    ],
  );
}
