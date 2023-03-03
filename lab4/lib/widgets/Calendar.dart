import 'package:flutter/material.dart';
import '/model/termin_polaganje.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'dart:math';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class calendar extends StatefulWidget {
  final Function listTermini;

  calendar(this.listTermini);

  @override
  State<StatefulWidget> createState() => CalendarState();
}

class CalendarState extends State<calendar> {

  

 Map<DateTime, List<CleanCalendarEvent>> events = {

     DateFormat("dd/MM/yyyy").parse("11/03/2023"): [
     CleanCalendarEvent("",startTime: DateTime(2023,03,02,12,30,0,0,0),endTime: DateTime(2023,03,02,12,30,0,0,0),description: "")
    ],
   DateFormat("dd/MM/yyyy").parse("12/03/2023"): [
     CleanCalendarEvent("",startTime: DateTime(2023,03,02,12,30,0,0,0),endTime: DateTime(2023,03,02,12,30,0,0,0),description: "")
   ]

  };



 /* void _handleData(date) {
    setState(() {
      selectedDay = date;
      selectedEvent = events[selectedDay] ?? [];
    });
    print(selectedDay);
  }*/

 @override
 void initState() {
    // TODO: implement initState
   // selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        child: Calendar(
          startOnMonday: true,
          selectedColor: Colors.blue,
          todayColor: Colors.red,
          eventColor: Colors.green,
          eventDoneColor: Colors.amber,
          bottomBarColor: Colors.deepOrange,
          onRangeSelected: (range) {
            print('Selected Day ${range.from}, ${range.to}');
          },/*,
          onDateSelected: (date) {
            return _handleData(date);
          },*/
          events: events,
          isExpanded: true,
          dayOfWeekStyle: TextStyle(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
          bottomBarTextStyle: TextStyle(
            color: Colors.white,
          ),
          hideBottomBar: false,
          isExpandable: true,
          hideArrows: false,
          weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
        ));
  }
}
