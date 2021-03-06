import 'package:calender_flutter/Calendar/calendarPlugin.dart';
import 'package:calender_flutter/Calendar/date_utils.dart';
import 'package:flutter/material.dart';

class CalendarPluginDayItem extends StatelessWidget {
  CalendarPluginDayItem({
    this.date,
    this.calendarroState,
    this.onTap,
  });

  final DateTime date;
  CalendarPluginState calendarroState;
  final DateTimeCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool isWeekend = DateUtils.isWeekend(date);
    var textColor = isWeekend ? Colors.grey : Colors.black;
    bool isToday = DateUtils.isToday(date);
    calendarroState = CalendarPlugin.of(context);

    bool daySelected = calendarroState.isDateSelected(date);

    BoxDecoration boxDecoration;
    if (daySelected) {
      textColor = Colors.white;
      boxDecoration =
          BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle);
    } else if (isToday) {
      boxDecoration = BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1.0,
        ),
        // shape: BoxShape.circle,
      );
    }

    return Expanded(
      child: GestureDetector(
        child: Container(
          height: 45,
          decoration: boxDecoration,
          child: Center(
            child: Text(
              "${date.day}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
        ),
        onTap: handleTap,
        behavior: HitTestBehavior.translucent,
      ),
    );
  }

  void handleTap() {
    if (onTap != null) {
      onTap(date);
    }

    calendarroState.setSelectedDate(date);
    calendarroState.setCurrentDate(date);
  }
}
