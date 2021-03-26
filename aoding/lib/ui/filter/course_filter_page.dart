import 'package:aoding/ui/filter/filter_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';
import '../../strings.dart';

class CourseFilterPage extends StatefulWidget {
  @override
  _CourseFilterPageState createState() => _CourseFilterPageState();
}

class _CourseFilterPageState extends State<CourseFilterPage> {
  int _filter = Constants.allFilter;

  @override
  void initState() {
    super.initState();

    _loadValue();
  }

  _loadValue() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _filter = prefs.getInt(Constants.filterKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.filter),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FilterWidget(
              value: Constants.iosFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.ios),
          FilterWidget(
              value: Constants.androidFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.android),
          FilterWidget(
              value: Constants.flutterFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.flutter),
          FilterWidget(
              value: Constants.sssFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.sss),
          FilterWidget(
              value: Constants.unityFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.unity),
          FilterWidget(
              value: Constants.macosFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.macos),
          FilterWidget(
              value: Constants.allFilter,
              groupValue: _filter,
              onChanged: _handleRadioValueChange,
              text: Strings.all),
        ],
      ),
    );
  }

  void _handleRadioValueChange(int value) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _filter = value;
      prefs.setInt(Constants.filterKey, _filter);
    });
  }
}
