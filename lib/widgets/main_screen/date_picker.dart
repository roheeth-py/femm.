import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //411
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        setState(() {
          _selectedDate = selectedDate;
        });
      },
      activeColor: const Color(0xFFF885B3),
      dayProps: EasyDayProps(
        width: 40,
        height: 70,
        activeDayStyle: DayStyle(
          borderRadius: 32.0,
          dayNumStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.white,
          ),
          dayStrStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.white,
              fontSize: 12
          ),
        ),
        dayStructure: DayStructure.dayNumDayStr,
        todayStyle: DayStyle(
          dayNumStyle: Theme.of(context).textTheme.bodyMedium,
          borderRadius: 32,
        ),
        inactiveDayStyle: DayStyle(
          borderRadius: 32,
          dayNumStyle: Theme.of(context).textTheme.bodyMedium,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
      headerProps: const EasyHeaderProps(
        showHeader: false,
      ),
      timeLineProps: EasyTimeLineProps(
        hPadding: 16.0, // padding from left and right
        separatorPadding: width/27, // padding between days
      ),
    );
  }
}
