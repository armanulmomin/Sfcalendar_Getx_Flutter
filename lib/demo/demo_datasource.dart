import 'package:sfcalendar_getx_flutter/demo/demo_detail.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';




class MeetingDataSoucrse extends CalendarDataSource {
  DemoDetail dc = new DemoDetail();
  MeetingDataSoucrse(List<Appointment> source) {
    appointments = source;
  }
  //print(dc.getAppointments());

}
