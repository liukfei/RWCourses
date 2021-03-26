import 'package:aoding/state/filter_state_container.dart';
import 'package:aoding/ui/filter/filter_widget.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../strings.dart';

class CourseFilterPage extends StatefulWidget {
  @override
  _CourseFilterPageState createState() => _CourseFilterPageState();
}

class _CourseFilterPageState extends State<CourseFilterPage> {
  FilterState state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = FilterStateContainer.of(context);
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
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.ios),
          FilterWidget(
              value: Constants.androidFilter,
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.android),
          FilterWidget(
              value: Constants.flutterFilter,
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.flutter),
          FilterWidget(
              value: Constants.sssFilter,
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.sss),
          FilterWidget(
              value: Constants.unityFilter,
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.unity),
          FilterWidget(
              value: Constants.macosFilter,
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.macos),
          FilterWidget(
              value: Constants.allFilter,
              groupValue: state.filter,
              onChanged: _handleRadioValueChange,
              text: Strings.all),
        ],
      ),
    );
  }

  void _handleRadioValueChange(int value) async {
    state.updateFilter(value);
  }
}
