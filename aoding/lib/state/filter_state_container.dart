import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

class FilterStateContainer extends StatefulWidget {
  final Widget child;

  const FilterStateContainer({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  FilterState createState() => FilterState();

  static FilterState of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_FilterInheritedWidget>()
        .state;
  }
}

class FilterState extends State<FilterStateContainer> {
  int filter = Constants.allFilter;
  SharedPreferences _pref;

  @override
  void initState() {
    super.initState();
    _loadValue();
  }

  _loadValue() {
    SharedPreferences.getInstance().then((value) {
      _pref = value;
      setState(() {
        filter = _pref.getInt(Constants.filterKey);
      });
    });
  }

  void updateFilter(int value) {
    setState(() {
      _pref.setInt(Constants.filterKey, value);
      filter = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _FilterInheritedWidget(
      state: this,
      child: widget.child,
    );
  }
}

class _FilterInheritedWidget extends InheritedWidget {
  final FilterState state;

  _FilterInheritedWidget({
    Key key,
    @required this.state,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
