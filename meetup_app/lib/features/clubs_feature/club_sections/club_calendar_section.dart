import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../core/objects/event.dart';

class ClubCalendarSection extends StatefulWidget {
  const ClubCalendarSection({Key? key}) : super(key: key);

  @override
  _ClubMembersSectionState createState() => _ClubMembersSectionState();
}

class _ClubMembersSectionState extends State<ClubCalendarSection> {
  // Initialize a list to store the fetched data
  List<String> membersList = [];
  CalendarFormat _calendarFormat = CalendarFormat.twoWeeks;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Simulate fetching data from a database
  Future<void> fetchDataFromDatabase() async {
    // Replace this with your actual database fetching logic
    //await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Update the list with fetched data
      membersList = List.generate(25, (index) => 'Member Name $index');
    });
  }

  @override
  void initState() {
    super.initState();
    // Fetch data from the database when the widget initializes
    fetchDataFromDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: kTextTabBarHeight * 0.5),
        child: Card(
            child: TableCalendar<Event>(
          firstDay: DateTime.utc(2020, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          startingDayOfWeek: StartingDayOfWeek.monday,
          availableGestures: AvailableGestures.horizontalSwipe,
          shouldFillViewport: false,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          availableCalendarFormats: const {
            CalendarFormat.month: 'Month',
            CalendarFormat.twoWeeks: '2 Weeks',
            CalendarFormat.week: 'Week',
          },
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
        )));
  }
}
