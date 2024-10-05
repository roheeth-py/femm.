import 'package:femm/models/track_cycle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/track/track_enums.dart';

class Track extends ConsumerStatefulWidget {
  const Track({super.key});

  @override
  ConsumerState<Track> createState() => _TrackState();
}

class _TrackState extends ConsumerState<Track> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Track Cycle",
          style: TextStyle(fontSize: 18, fontFamily: "Public sans"),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
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
            buildIndicator<FlowIntensity>(FlowIntensity.values,
                getFlowIntensityIcon, "Flow Intensity", 0xFFd50000),
            buildIndicator<BloodColor>(BloodColor.values, getBloodColorIcon,
                "Blood Color", 0xFFD32F2F),
            buildIndicator<PainLevel>(
                PainLevel.values, getPainLevelIcon, "Pain Level", 0xFF1976D2),
            buildIndicator<Symptoms>(
                Symptoms.values, getSymptomsIcon, "Symptoms", 0xFF388E3C),
            buildIndicator<Mood>(Mood.values, getMoodIcon, "Mood", 0xFF8E24AA),
            buildIndicator<DischargeType>(DischargeType.values,
                getDischargeTypeIcon, "Discharge Type", 0xFF00796B),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}