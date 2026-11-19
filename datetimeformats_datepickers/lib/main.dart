import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(DateTimeFormatsWidget());
}

class DateTimeFormatsWidget extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      title: 'Date And Time',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: DateTimeFormatsListPage(),
    );
  }
}

class DateTimeFormatsListPage extends StatelessWidget {
  List<String> dateFormats = [
    "dd-MM-yyyy", // 19-11-2026
    "dd/MM/yyyy", // 19/11/2026
    "MM-dd-yyyy", // 11-19-2026
    "MM/dd/yyyy", // 11/19/2026
    "yyyy-MM-dd", // 2026-11-19
    "yyyy/MM/dd", // 2026/11/19
    "dd MMM yyyy", // 19 Nov 2026
    "dd MMMM yyyy", // 19 November 2026
    "MMM dd, yyyy", // Nov 19, 2026
    "MMMM dd, yyyy", // November 19, 2026
    "EEE, dd MMM yyyy", // Thu, 19 Nov 2026
    "EEEE, dd MMMM yyyy", // Thursday, 19 November 2026
    "dd-MM-yy", // 19-11-26
    "dd/MM/yy", // 19/11/26
    "yyyyMMdd", // 20261119
  ];

  List<String> timeFormats = [
    "HH:mm", // 15:30
    "hh:mm a", // 03:30 PM
    "HH:mm:ss", // 15:30:45
    "hh:mm:ss a", // 03:30:45 PM
    "H:mm", // 15:30
    "h:mm a", // 3:30 PM
    "h:mm:ss a", // 3:30:45 PM
    "HHmm", // 1530
    "hhmm a", // 0330 PM
    "mm:ss", // 30:45
    "HH:mm:ss.SSS", // 15:30:45.123
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date And Times List')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Date Formats',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 60,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.amber,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat(dateFormats[index])
                                    .format(DateTime.now()),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: dateFormats.length,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Time Formats',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 60,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.amber,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat(timeFormats[index])
                                    .format(DateTime.now()),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 10);
                      },
                      itemCount: timeFormats.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
