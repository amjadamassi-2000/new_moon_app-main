import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class GregorianCalendarScreen extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<GregorianCalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      monthViewSettings: MonthViewSettings(
          numberOfWeeksInView: 5,
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          showAgenda: true,
          showTrailingAndLeadingDates: false,
          agendaStyle: AgendaStyle(
              dateTextStyle: TextStyle(color: Colors.green),
              appointmentTextStyle: TextStyle(
                fontSize: 15,
              ),
              dayTextStyle: TextStyle(color: Colors.red))),

      cellBorderColor: Colors.amber,
      view: CalendarView.month,
      allowViewNavigation: false,

      //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
      //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
      dataSource: MeetingDataSource(getAppointments()),
      timeSlotViewSettings: TimeSlotViewSettings(
          timeInterval: Duration(hours: 2),
          timeIntervalHeight: 80,
          timeIntervalWidth: 100),
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
      color: Colors.green,
      startTime: DateTime(2022, 7, 23),
      subject: 'سابع مجوع شابع    ',
      isAllDay: false,
      notes: 'h'));
  meetings.add(Appointment(
      endTime: DateTime(2022, 7, 7),
      location: 'center',
      color: Colors.red,
      startTime: DateTime(2022, 7, 7),
      subject: "      مهند",
      isAllDay: false,
      notes: 'h'));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
