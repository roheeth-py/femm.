import 'package:femm/widgets/main_screen/timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedDate = DateTime.now();

  String get monthName {
    String format = DateFormat("MMMM y").format(_selectedDate);
    return format;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //411
    final height = MediaQuery.of(context).size.height; //890
    return Scaffold(
      appBar: AppBar(
        title: Text(monthName),
      ),
      body: Column(
        children: [
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              setState(() {
                _selectedDate = selectedDate;
              });
            },
            activeColor: Colors.pinkAccent,
            dayProps: const EasyDayProps(
              width: 40,
              height: 70,
              activeDayStyle: DayStyle(
                borderRadius: 32.0,
              ),
              dayStructure: DayStructure.dayNumDayStr,
              todayStyle: DayStyle(
                borderRadius: 32,
              ),
              inactiveDayStyle: DayStyle(
                  borderRadius: 32,
                  decoration: BoxDecoration(color: Colors.transparent)),
            ),
            headerProps: const EasyHeaderProps(
              showHeader: false,
            ),
            timeLineProps: const EasyTimeLineProps(
              hPadding: 16.0, // padding from left and right
              separatorPadding: 16.0, // padding between days
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "asset/images/card_grad.png",
                ),
              ),
            ),
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: height * 0.20,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Period:"),
                    Text("day 5"),
                    Text("Next Ovulation:"),
                    Text("in 5 days"),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color(0xFFfafafa),
                          )),
                    ),
                    Positioned(
                      right: 40,
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFfafafa),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: height * 0.55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Color(0xFFF9EFF6)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Timeline"),
                    Spacer(),
                    Text("show more"),
                  ],
                ),
                Timeline(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
