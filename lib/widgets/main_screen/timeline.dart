import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //411
    final height = MediaQuery.of(context).size.height; //890
    return TimelineTile(
      isFirst: true,
      alignment: TimelineAlign.manual,
      lineXY: 0.25,afterLineStyle: LineStyle(
        thickness: 1,
        color: Colors.black
    ),
      indicatorStyle: IndicatorStyle(
          color: Colors.transparent,
          padding: EdgeInsets.only(bottom: 0.1, right: 10, left: 10),
          iconStyle: IconStyle(iconData: Icons.adjust, fontSize: 30, color: Color(0xFFF885B3)),
          indicatorXY: 0.2
      ),
      startChild: Column(
        children: [
          Text("25 sep"),
          Text("25 sep"),
        ],
      ),
      endChild: Container(
        height: height/9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        width: width*0.5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CircleAvatar(
                backgroundColor: Color(0xffF9EFF6),
                radius: 30,
                child: Icon(Icons.water_drop, color: Color(0xffF885B3),),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Period"),
                Text("6 - 7 days"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
