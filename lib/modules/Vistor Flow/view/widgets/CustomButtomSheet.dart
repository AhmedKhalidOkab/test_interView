// import 'package:flutter/material.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
//     show CalendarCarousel;

// class MyCalendar extends StatefulWidget {
//   @override
//   _MyCalendarState createState() => _MyCalendarState();
// }

// class _MyCalendarState extends State<MyCalendar> {
//   DateTime _currentDate = DateTime.now();
//    DateTime? _rangeStartDate;
//    DateTime? _rangeEndDate;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Calendar'),
//       ),
//       body: CalendarCarousel(
//         selectedDateTime: _currentDate,
//         onDayPressed: (DateTime date, List events) {
//           setState(() {
//             _currentDate = date;
//             _rangeStartDate = null;
//             _rangeEndDate = null;
//           });
//         },
//         markedDateCustomShapeBorder: ,: (date, _) {
//           if (_rangeStartDate != null && _rangeEndDate != null) {
//             if (date.isAfter(_rangeStartDate) && date.isBefore(_rangeEndDate)) {
//               return Container(
//                 margin: EdgeInsets.all(3),
//                 width: 30,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.green,
//                 ),
//                 child: Center(
//                   child: Text(
//                     date.day.toString(),
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               );
//             }
//           }
//           return null;
//         },
//         onRangeSelected: (range) {
//           setState(() {
//             _rangeStartDate = range.start;
//             _rangeEndDate = range.end
//                 .add(Duration(days: 1)); // add 1 day to include the end date
//           });
//         },
//       ),
//     );
//   }
// }
