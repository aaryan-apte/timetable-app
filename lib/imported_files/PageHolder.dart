import 'page/date_picker_page.dart';
import 'page/custom_picker_page.dart';
import 'widget/tabbar_widget.dart';
import 'package:flutter/material.dart';

class PageHolder extends StatelessWidget {
  static final String title = 'Select your Date and Venue';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Select your Date and Venue',
        tabs: [
          Tab(icon: Icon(Icons.date_range), text: 'Date'),
          Tab(icon: Icon(Icons.location_pin), text: 'Venue'),
        ],
        children: [
          DatePickerPage(),
          CustomPickerPage(),
        ],
      );
}
