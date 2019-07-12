import 'package:calender_flutter/Calendar/WeekDays.dart';
import 'package:flutter/widgets.dart';

class CalendarroWeekdayLabelsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Text(weekDay[0], textAlign: TextAlign.center)),
        Expanded(child: Text(weekDay[1], textAlign: TextAlign.center)),
        Expanded(child: Text(weekDay[2], textAlign: TextAlign.center)),
        Expanded(child: Text(weekDay[3], textAlign: TextAlign.center)),
        Expanded(child: Text(weekDay[4], textAlign: TextAlign.center)),
        Expanded(child: Text(weekDay[5], textAlign: TextAlign.center)),
        Expanded(child: Text(weekDay[6], textAlign: TextAlign.center)),
      ],
    );
  }
}