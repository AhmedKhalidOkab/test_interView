import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:task_interview/core/constant/colors.dart';
import 'package:task_interview/modules/Vistor%20Flow/view/widgets/suggetsitems.dart';
import 'package:task_interview/view/widgets/customButtom.dart';
import 'package:task_interview/view/widgets/datapckermodified.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            '${DateFormat('EEEE, MMM d, yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('EEEE, MMM d, yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var W = MediaQuery.of(context).size.width;
    var H = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/homeimg.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: H * 0.35,
              ),
              Positioned(
                top: H * 0.06,
                left: W * 0.04,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 30,
                  width: 30,
                  // color: Colors.red,
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 16, top: 11, left: 16),
            child: Text(
              'Sahary',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Alexandria - Egypt',
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 74, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16, top: 11, left: 16),
              child: Row(
                children: [
                  textfield(
                    text: 'Marine Area',
                    width: W * 0.29,
                  ),
                  textfield(
                    text: 'Chalet',
                    width: W * 0.2,
                  ),
                  textfield(
                    text: 'Max. 8 Guest',
                    width: W * 0.3,
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(right: 16, top: 11, left: 16),
              child: Row(
                children: [
                  textfield(
                    text: 'Only Male',
                    width: W * 0.25,
                  ),
                  textfield(
                    text: 'Allow Pets',
                    width: W * 0.25,
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(
              left: W * 0.04,
              top: H * 0.02,
            ),
            child: Divider(
              color: Color.fromRGBO(233, 233, 233, 1),
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: W * .04, top: H * .01, left: 16),
            child: Text(
              'About place',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'House with separate "studio apartment". The apartment has a separate entrance from the host and secured parking, free Wi-Fi and space around the house for socializing. Suitable for family and friends gatherings with facilities for children.',
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 74, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomButtom(
        H: H,
        W: W,
        color: MyColors.colorYellow,
        text: 'Reserve',
        ontap: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            isScrollControlled: true,
            isDismissible: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            context: context,
            builder: (BuildContext context) {
              var args;
              return FractionallySizedBox(
                heightFactor: 0.79,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 35,
                            width: 35,
                            child: Center(
                              child: const Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: H * 0.04,
                          left: W * 0.04,
                          bottom: H * 0.02,
                        ),
                        child: const Text(
                          'Sahary in alexandria, Egypt',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        height: 330,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Color.fromRGBO(233, 233, 233, 1)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: SfDateRangePicker(
                          backgroundColor: Colors.white,
                          todayHighlightColor: MyColors.backgroundColor,
                          monthCellStyle: DateRangePickerMonthCellStyle(
                              todayCellDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              todayTextStyle: const TextStyle(
                                  color: MyColors.backgroundColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16)),
                          headerHeight: 100,
                          headerStyle: const DateRangePickerHeaderStyle(
                              textAlign: TextAlign.center,
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16)),
                          monthViewSettings:
                              const DateRangePickerMonthViewSettings(
                                  firstDayOfWeek: 1,
                                  viewHeaderHeight: 40,
                                  dayFormat: 'EEE',
                                  viewHeaderStyle:
                                      DateRangePickerViewHeaderStyle(
                                          backgroundColor: Colors.white,
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16))),
                          view: DateRangePickerView.month,
                          selectionShape: DateRangePickerSelectionShape.circle,
                          rangeSelectionColor: MyColors.backgroundColor,
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode: DateRangePickerSelectionMode.range,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 16),
                        child: _range != null
                            ? Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reservation start & end',
                                    style: TextStyle(
                                      color: MyColors.backgroundColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: H * 0.02),
                                  // Text('Selected date count: $_dateCount'),
                                  Text(
                                    '$_range',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: H * 0.01),
                                  Row(
                                    children: [
                                      Text('EGP 90',
                                          style: const TextStyle(
                                            color: MyColors.backgroundColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            overflow: TextOverflow.ellipsis,
                                          )),
                                      SizedBox(width: W * 0.03),
                                      Text('without taxes')
                                    ],
                                  )
                                ],
                              )
                            : Container(height: H * 0.06),
                      ),
                      SizedBox(height: H * 0.02),
                      CustomButtom(
                        onupdate: (value) {
                          setState(() {
                            _range = value; // update the value
                          });
                        },
                        H: H,
                        W: W,
                        text: 'Confirm',
                        color: _range == null
                            ? MyColors.colorYellow.withOpacity(.3)
                            : MyColors.colorYellow,
                        ontap: () {},
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
