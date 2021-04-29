import 'package:flutter/material.dart';
import 'package:flutter_responsive_flex_grid/flutter_responsive_flex_grid.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testing ResponsiveGrid in Extra Extra Large Device',
      (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(1400 + 1, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1;
    await tester.pumpWidget(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGrid(
        gridSpacing: 0,
        children: List.generate(
            12,
            (index) => ResponsiveGridItem(
                xs: 100 / 1,
                sm: 100 / 1,
                md: 100 / 3,
                lg: 100 / 4,
                xl: 100 / 4,
                xxl: 100 / 6,
                child: AspectRatio(aspectRatio: 1, child: Container()))),
      ),
    ));
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
  testWidgets('Testing ResponsiveGrid in Extra Large Device',
      (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(1200 + 1, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1;
    await tester.pumpWidget(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGrid(
        gridSpacing: 0,
        children: List.generate(
            12,
            (index) => ResponsiveGridItem(
                xs: 100 / 1,
                sm: 100 / 1,
                md: 100 / 3,
                lg: 100 / 4,
                xl: 100 / 4,
                xxl: 100 / 6,
                child: AspectRatio(aspectRatio: 1, child: Container()))),
      ),
    ));
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
  testWidgets('Testing ResponsiveGrid in Large Device',
      (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(992 + 1, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1;
    await tester.pumpWidget(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGrid(
        gridSpacing: 0,
        children: List.generate(
            12,
            (index) => ResponsiveGridItem(
                xs: 100 / 1,
                sm: 100 / 1,
                md: 100 / 3,
                lg: 100 / 4,
                xl: 100 / 4,
                xxl: 100 / 6,
                child: AspectRatio(aspectRatio: 1, child: Container()))),
      ),
    ));
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
  testWidgets('Testing ResponsiveGrid in Medium Device',
      (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(768 + 1, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1;
    await tester.pumpWidget(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGrid(
        gridSpacing: 0,
        children: List.generate(
            12,
            (index) => ResponsiveGridItem(
                xs: 100 / 1,
                sm: 100 / 1,
                md: 100 / 3,
                lg: 100 / 4,
                xl: 100 / 4,
                xxl: 100 / 6,
                child: AspectRatio(aspectRatio: 1, child: Container()))),
      ),
    ));
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
  testWidgets('Testing ResponsiveGrid in Small Device',
      (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(576 + 1, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1;
    await tester.pumpWidget(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGrid(
        gridSpacing: 0,
        children: List.generate(
            12,
            (index) => ResponsiveGridItem(
                xs: 100 / 1,
                sm: 100 / 1,
                md: 100 / 3,
                lg: 100 / 4,
                xl: 100 / 4,
                xxl: 100 / 6,
                child: AspectRatio(aspectRatio: 1, child: Container()))),
      ),
    ));
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
  testWidgets('Testing ResponsiveGrid in Extra Small Device',
      (WidgetTester tester) async {
    tester.binding.window.physicalSizeTestValue = Size(576 - 1, 1920);
    tester.binding.window.devicePixelRatioTestValue = 1;
    await tester.pumpWidget(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGrid(
        gridSpacing: 0,
        children: List.generate(
            12,
            (index) => ResponsiveGridItem(
                xs: 100 / 1,
                sm: 100 / 1,
                md: 100 / 3,
                lg: 100 / 4,
                xl: 100 / 4,
                xxl: 100 / 6,
                child: AspectRatio(aspectRatio: 1, child: Container()))),
      ),
    ));
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
  });
}
