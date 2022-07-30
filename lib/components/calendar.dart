import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyHomePageCleander extends StatefulWidget {
  MyHomePageCleander({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageCleander> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.month,
      monthViewSettings: MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
      //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
      dataSource: MeetingDataSource(getAppointments()),
    );
  }
}






List<Appointment> getAppointments() {

  List<Appointment> meetings = <Appointment>[];


  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
    color: Colors.red,
    startTime: DateTime(2022,7,23),
    endTime: DateTime(2022,7,23),
    subject: "الثريا",
    isAllDay: false,
  ));

  meetings.add(
      Appointment(
    color: Colors.red,
    startTime: DateTime(2022,7,25),
    endTime: DateTime(2022,7,25),
    subject: "الجوزاء  ",
    isAllDay: false,
  ));




  return meetings;
}






class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
