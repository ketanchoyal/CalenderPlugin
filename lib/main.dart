import 'package:calender_flutter/Calendar/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:calender_flutter/Calendar/calendarPlugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calendar Demo',
      theme: new ThemeData(
        // primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(title: 'Calendar Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  CalendarPlugin monthCalendarro;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var lastDayOfNextMonth = DateUtils.getLastDayOfNextMonth();
    // monthCalendarro = CalendarPlugin(
    //         startDate: DateUtils.getFirstDayOfNextMonth(),
    //         endDate: lastDayOfNextMonth,
    //         displayMode: DisplayMode.MONTHS,
    //         selectionMode: SelectionMode.MULTI,
    //         weekdayLabelsRow: CustomWeekdayLabelsRow(),
    //         onTap: (date) {
    //           monthCalendarro.selectedDates;
    //           print("onTap: $date");
    //         },
    //       );
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: new Text(title),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            // color: Colors.orange,
            child: CalendarPlugin(
              endDate: DateTime.now().add(Duration(days: 45)),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.red,
            ),
          ),
          // monthCalendarro
        ],
      ),
    );
  }
}

class CustomWeekdayLabelsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Text("M", textAlign: TextAlign.center)),
        Expanded(child: Text("T", textAlign: TextAlign.center)),
        Expanded(child: Text("W", textAlign: TextAlign.center)),
        Expanded(child: Text("T", textAlign: TextAlign.center)),
        Expanded(child: Text("F", textAlign: TextAlign.center)),
        Expanded(child: Text("S", textAlign: TextAlign.center)),
        Expanded(child: Text("S", textAlign: TextAlign.center)),
      ],
    );
  }
}
