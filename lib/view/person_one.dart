import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../model/meeting.dart';
import '../model/meeting_data_source.dart';
import 'details.dart';


//import 'package:syncfusion_flutter_calendar/src/';
class PersonOne extends StatelessWidget {

  const PersonOne({Key? key}) : super(key: key);

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Person One"),),
      //body: Center(child: Text("Person One",style: TextStyle(fontSize: 50),)),
      body: SfCalendar(
        dataSource: MeetingDataSource(_getDataSource()),
        monthViewSettings: MonthViewSettings(appointmentDisplayMode: MonthAppointmentDisplayMode.indicator, showAgenda: true),
       view: CalendarView.month,
        cellBorderColor: Colors.transparent,

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Get.to(()=> Details());
        },
      ),
    );
  }
}
