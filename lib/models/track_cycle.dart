import 'package:flutter/material.dart';

enum FlowIntensity {
  light,
  medium,
  heavy,
  veryHeavy,
}

enum BloodColor {
  brightRed,
  darkRed,
  brown,
  pink,
  orange,
  gray,
  black,
}

enum PainLevel {
  none,
  mild,
  moderate,
  severe,
}

enum Symptoms {
  bloating,
  headache,
  nausea,
  fatigue,
  acne,
  breastTenderness,
  backPain,
  dizziness,
  diarrhea,
  constipation,
}

enum Mood {
  happy,
  sad,
  irritable,
  anxious,
  calm,
  stressed,
}

enum DischargeType {
  normal,
  spotting,
  heavySpotting,
  unusual,
}

IconData getFlowIntensityIcon(FlowIntensity flow) {
  switch (flow) {
    case FlowIntensity.light:
      return Icons.invert_colors;
    case FlowIntensity.medium:
      return Icons.water_damage;
    case FlowIntensity.heavy:
      return Icons.opacity;
    case FlowIntensity.veryHeavy:
      return Icons.water;
    default:
      return Icons.help;
  }
}

IconData getBloodColorIcon(BloodColor color) {
  switch (color) {
    case BloodColor.brightRed:
      return Icons.brightness_high;
    case BloodColor.darkRed:
      return Icons.brightness_low;
    case BloodColor.brown:
      return Icons.terrain;
    case BloodColor.pink:
      return Icons.favorite_border;
    case BloodColor.orange:
      return Icons.warning;
    case BloodColor.gray:
      return Icons.remove_circle;
    case BloodColor.black:
      return Icons.block;
    default:
      return Icons.help;
  }
}

IconData getPainLevelIcon(PainLevel pain) {
  switch (pain) {
    case PainLevel.none:
      return Icons.sentiment_very_satisfied;
    case PainLevel.mild:
      return Icons.sentiment_satisfied;
    case PainLevel.moderate:
      return Icons.sentiment_neutral;
    case PainLevel.severe:
      return Icons.sentiment_dissatisfied;
    default:
      return Icons.help;
  }
}

IconData getSymptomsIcon(Symptoms symptom) {
  switch (symptom) {
    case Symptoms.bloating:
      return Icons.air;
    case Symptoms.headache:
      return Icons.healing;
    case Symptoms.nausea:
      return Icons.sick;
    case Symptoms.fatigue:
      return Icons.battery_alert;
    case Symptoms.acne:
      return Icons.face;
    case Symptoms.breastTenderness:
      return Icons.accessibility;
    case Symptoms.backPain:
      return Icons.backpack;
    case Symptoms.dizziness:
      return Icons.snooze;
    case Symptoms.diarrhea:
      return Icons.airline_seat_flat;
    case Symptoms.constipation:
      return Icons.warning;
    default:
      return Icons.help;
  }
}

IconData getMoodIcon(Mood mood) {
  switch (mood) {
    case Mood.happy:
      return Icons.sentiment_very_satisfied;
    case Mood.sad:
      return Icons.sentiment_dissatisfied;
    case Mood.irritable:
      return Icons.sentiment_neutral;
    case Mood.anxious:
      return Icons.sentiment_neutral_rounded;
    case Mood.calm:
      return Icons.self_improvement;
    case Mood.stressed:
      return Icons.sentiment_very_dissatisfied;
    default:
      return Icons.help;
  }
}

IconData getDischargeTypeIcon(DischargeType discharge) {
  switch (discharge) {
    case DischargeType.normal:
      return Icons.check_circle;
    case DischargeType.spotting:
      return Icons.fiber_manual_record;
    case DischargeType.heavySpotting:
      return Icons.radio_button_checked;
    case DischargeType.unusual:
      return Icons.warning;
    default:
      return Icons.help;
  }
}
