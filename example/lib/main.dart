
import 'package:flutter/material.dart';
import 'package:flutter_responsive_flex_grid/flutter_responsive_flex_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var string = (100/6).toString();
    if(string.indexOf('.')==2){
      string = string.substring(0, 5);
    }
    if(string.indexOf('.')==1){
      string = string.substring(0, 4);
    }
    print(string);
    return Scaffold(
      // backgroundColor: Color(0xFFF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ResponsiveGrid(
                gridSpacing: 8,
                children: [
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.red),
                    xl: 100/4,
                    xxl: 100/6,
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.green),
                    xl: 100/4,
                    xxl: 100/6,
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.blue),
                    xl: 100/4,
                    xxl: 100/6,
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.grey),
                    xl: 100/4,
                    xxl: 100/6,
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.black),
                    xxl: 100/6,
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.red),
                    xxl: 100/6,
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.green),
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.blue),
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.grey),
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.black),
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.yellowAccent),
                  ),
                  ResponsiveGridItem(
                    child: _buildColorContainer(Colors.tealAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorContainer(Color color) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        // margin: EdgeInsets.all(1),
        color: color,
      ),
    );
  }
}
