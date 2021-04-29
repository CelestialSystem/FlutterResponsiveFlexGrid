library flutter_responsive_flex_grid;

import 'package:flutter/material.dart';

class ResponsiveGrid extends StatefulWidget {
  final List<ResponsiveGridItem> children;
  final double? gridSpacing;

  const ResponsiveGrid(
      {Key? key,
      this.children = const <ResponsiveGridItem>[],
      this.gridSpacing})
      : super(key: key);

  @override
  _ResponsiveGridState createState() => _ResponsiveGridState();
}

class _ResponsiveGridState extends State<ResponsiveGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print("width: $width");
    // final breakpoint = _currentBreakPoint(context);
    final halfSpacing = (widget.gridSpacing ?? 0) / 2;
    return Padding(
      padding: EdgeInsets.all(halfSpacing),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final breakpoint = _currentBreakPointFromConstraint(constraints);
        double spanWidth = constraints.maxWidth;
        print("Widget Width: $spanWidth ");
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _getDistributedWidgetList(widget.children, breakpoint)
                  .map((list) {
                var totalFlex = 0.0;
                list.forEach((e) => totalFlex += e.getWidthSpan(breakpoint));
                totalFlex = totalFlex.reduced;
                return IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: []
                      ..addAll(list.map((e) {
                        return Container(
                          padding: EdgeInsets.all(halfSpacing),
                          child: e,
                          width: e.getWidthSpan(breakpoint) * spanWidth / 100,
                        );
                      }))
                      ..add(Container(
                        width: (100 - totalFlex) * spanWidth / 100,
                      )),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      }),
    );
  }
}

class ResponsiveGridItem extends StatefulWidget {
  final double? xs;
  final double? sm;
  final double? md;
  final double? lg;
  final double? xl;
  final double? xxl;
  final Widget? child;

  const ResponsiveGridItem(
      {Key? key,
      this.xs,
      this.sm,
      this.md,
      this.lg,
      this.xl,
      this.xxl,
      this.child})
      : super(key: key);

  double getWidthSpan(_BreakPoints _breakPoint) {
    switch (_breakPoint) {
      case _BreakPoints.xs:
        return (this.xs ?? 100).reduced;
      case _BreakPoints.sm:
        return (this.sm ?? 50).reduced;
      case _BreakPoints.md:
        return (this.md ?? 33.32).reduced;
      case _BreakPoints.lg:
        return (this.lg ?? 25).reduced;
      case _BreakPoints.xl:
        return (this.xl ?? 16.66).reduced;
      case _BreakPoints.xxl:
        return (this.xxl ?? 8.32).reduced;
    }
  }

  @override
  _ResponsiveGridItemState createState() => _ResponsiveGridItemState();
}

extension _DoubleExtension on double {
  double get reduced {
    return this > 100 ? 100 : this;
  }
}

class _ResponsiveGridItemState extends State<ResponsiveGridItem> {
  @override
  Widget build(BuildContext context) {
    return widget.child ?? SizedBox();
  }
}

enum _BreakPoints { xs, sm, md, lg, xl, xxl }

_BreakPoints _currentBreakPointFromConstraint(BoxConstraints constraints) {
  double width = constraints.maxWidth;
  // print("Widget Width: $width ");
  if (width < 576)
    return _BreakPoints.xs;
  else if (width < 768 && width >= 576)
    return _BreakPoints.sm;
  else if (width < 992 && width >= 768)
    return _BreakPoints.md;
  else if (width < 1200 && width >= 992)
    return _BreakPoints.lg;
  else if (width < 1400 && width >= 1200)
    return _BreakPoints.xl;
  else
    return _BreakPoints.xxl;
}

List<List<ResponsiveGridItem>> _getDistributedWidgetList(
    List<ResponsiveGridItem> items, _BreakPoints _breakPoint) {
  var tempTotalFlex = 0.0;
  List<List<ResponsiveGridItem>> finalList = [];
  List<ResponsiveGridItem> itemList = [];

  for (var item in items) {
    tempTotalFlex += item.getWidthSpan(_breakPoint);
    if (tempTotalFlex.roundToDouble() <= 100) {
      itemList.add(item);
    } else {
      finalList.add(itemList);
      tempTotalFlex = item.getWidthSpan(_breakPoint);
      itemList = []..add(item);
    }
  }
  finalList.add(itemList);
  return finalList;
}
