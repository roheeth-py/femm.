import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timeline extends StatelessWidget {
  const Timeline({this.isFirst = true, this.isLast = false, super.key});
  final bool isFirst;
  final bool isLast;
  // final isType;
  // final date;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //411
    final height = MediaQuery.of(context).size.height; //890
    return Expanded(
      child: TimelineTile(
        isFirst: (isLast) ? false : true,
        isLast: (isLast) ? true : false,
        alignment: TimelineAlign.manual,
        lineXY: 0.25,
        beforeLineStyle: const LineStyle(thickness: 1, color: Colors.black),
        afterLineStyle: const LineStyle(thickness: 1, color: Colors.black),
        indicatorStyle: IndicatorStyle(
            color: Colors.transparent,
            padding: const EdgeInsets.only(bottom: 0.1, right: 10, left: 10),
            iconStyle: IconStyle(
                iconData: Icons.adjust,
                fontSize: 30,
                color: const Color(0xFFF885B3)),
            indicatorXY: 0.1),
        startChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "25 sep",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 5,
            ),
            Text("25 sep",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    )),
          ],
        ),
        endChild: Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: height / 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          width: width * 0.5,
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  backgroundColor: Color(0xffF9EFF6),
                  radius: 30,
                  child: Icon(
                    Icons.water_drop,
                    color: Color(0xffF885B3),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Period",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "6 - 7 days",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.black.withOpacity(0.5),
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TimeLines extends StatelessWidget {
  const TimeLines({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          color: Color(0xFFF9EFF6)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: 25,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffDEC0D0),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Timeline",
              ),
              const Spacer(),
              Text(
                "show more",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black.withOpacity(0.8),
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Timeline(),
          const Timeline(),
          const Timeline(),
          const Timeline(
            isLast: true,
          ),
        ],
      ),
    );
  }
}
