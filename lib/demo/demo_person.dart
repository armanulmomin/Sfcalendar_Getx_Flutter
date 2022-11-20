import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sfcalendar_getx_flutter/model/meeting.dart';
import 'package:sfcalendar_getx_flutter/model/meeting_data_source.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'demo_detail.dart';

class DemoPerson extends StatefulWidget {
  const DemoPerson({Key? key}) : super(key: key);

  @override
  State<DemoPerson> createState() => _DemoPersonState();
}

class _DemoPersonState extends State<DemoPerson> {
  DemoDetail dc = DemoDetail();
  List<Appointment> getAppointments()
  {
    List<Appointment> meetings =[];
    /* final String ti = titleController.text;
    final String des = descController.text;
    DateTime start = pickerDateFrom;
    DateTime to = pickerDateTo;
    meetings.add(Appointment(startTime: start, endTime: to,
      subject: ti.toString(), color: Colors.blueGrey,


    ));

    */

    return meetings;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.month,
       // dataSource: DemoDetail(getAppointment),
      ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Get.to(()=> DemoDetail());
          },
        ),

    );
  }


}







