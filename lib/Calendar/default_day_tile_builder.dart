import 'package:calender_flutter/Calendar/calendarPlugin.dart';
import 'package:calender_flutter/Calendar/default_day_tile.dart';
import 'package:flutter/material.dart';

class DefaultDayTileBuilder extends DayTileBuilder {
  DefaultDayTileBuilder();

  @override
  Widget build(BuildContext context, DateTime date, DateTimeCallback onTap) {
    return CalendarPluginDayItem(
      date: date,
      calendarroState: CalendarPlugin.of(context),
      onTap: onTap,
    );
  }
}
