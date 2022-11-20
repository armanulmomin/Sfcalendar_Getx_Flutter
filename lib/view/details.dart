import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  DateTime pickerDateFrom = DateTime.now();

  TimeOfDay timeFrom = TimeOfDay.now();

  DateTime pickerDateTo = DateTime.now();

  TimeOfDay timeTo = TimeOfDay.now();

  TextEditingController titleController = TextEditingController();

  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final format = DateFormat('yyyy-MM-dd HH:mm');
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Center(
                child: TextField(
                  controller: titleController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Enter the Title of the Appointment",
                      labelText: 'Title',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
            ),
            Text("From"),
            ListTile(
              title: Text(
                  "Date : ${pickerDateFrom.year}-${pickerDateFrom.month}-${pickerDateFrom.day}"),
              trailing: Icon(Icons.arrow_downward),
              onTap: _pickDateFrom,
            ),
            ListTile(
              title: Text("Time : ${timeFrom.hour}:${timeFrom.minute}"),
              trailing: Icon(Icons.arrow_downward),
              onTap: _pickTimeFrom,
            ),
            Text("To"),
            ListTile(
              title: Text(
                  "Date : ${pickerDateTo.year}-${pickerDateTo.month}-${pickerDateTo.day}"),
              trailing: Icon(Icons.arrow_downward),
              onTap: _pickDateTo,
            ),
            ListTile(
              title: Text("Time : ${timeTo.hour}:${timeTo.minute}"),
              trailing: Icon(Icons.arrow_downward),
              onTap: _pickTimeTo,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: TextField(
                  controller: descController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Enter the Description of the Appointment",
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                primary: Colors.black,
              ),
              onPressed: () {

                //print(meetings2);

                //print(meetings);

                print(pickerDateFrom);
                print(pickerDateTo);
                print(titleController.text);
                print(descController.text);
              },
              child: Text('Submit'),
            )

            //  DateTimeField(onDateSelected: onDateSelected, selectedDate: selectedDate)
          ],
        ),
      ),
    );
  }

  _pickDateFrom() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickerDateFrom,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));

    if (date != null) {
      setState(() {
        pickerDateFrom = date;
      });
    }
  }

  _pickTimeFrom() async {
    TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: timeFrom,
    );

    if (t != null) {
      setState(() {
        timeFrom = t;
      });
    }
  }

  _pickDateTo() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickerDateTo,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));

    if (date != null) {
      setState(() {
        pickerDateTo = date;
      });
    }
  }

  _pickTimeTo() async {
    TimeOfDay? t = await showTimePicker(
      context: context,
      initialTime: timeTo,
    );

    if (t != null) {
      setState(() {
        timeTo = t;
      });
    }
  }
}
