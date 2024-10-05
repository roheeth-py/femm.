import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/track_cycle_provider.dart';

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

Widget buildIndicator<T>(List<T> enumValues, IconData Function(T string) icon,
    String text, int colorCode) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 20,
      ),
      Text(
        text,
        style: const TextStyle(fontSize: 18, fontFamily: "Public sans"),
      ),
      const SizedBox(
        height: 5,
      ),
      Consumer(
        builder: (context, ref, child) {
          List list = ref.watch(trackCycleProvider);
          return Wrap(spacing: 10, children: [
            for (final i in enumValues)
              OutlinedButton.icon(
                style: (list.contains(i))
                    ? OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    foregroundColor: Colors.white,
                    backgroundColor: Color(colorCode).withOpacity(0.7),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ))
                    : OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    foregroundColor: Colors.black54,
                    side: BorderSide(
                      color: Color(colorCode).withOpacity(0.7),
                    )),
                onPressed: () {
                  if (list.contains(i)) {
                    return ref.watch(trackCycleProvider.notifier).remove(i);
                  } else {
                    return ref.watch(trackCycleProvider.notifier).add(i);
                  }
                },
                label: Text(
                  formatEnum(i.toString().split(".").last),
                ),
                icon: Icon(
                  icon(i),
                ),
              )
          ]);
        },
      ),
    ],
  );
}
