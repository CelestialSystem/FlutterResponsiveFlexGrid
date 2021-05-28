
[![](package_banner.png)](https://celestialsys.com)

# Flutter Responsive Flex Grid 

[![build](https://github.com/CelestialSystem/ResponsiveFlexGrid-Flutter/actions/workflows/ci-cd.yml/badge.svg)](https://github.com/CelestialSystem/ResponsiveFlexGrid-Flutter/actions/workflows/ci-cd.yml)

Flutter package to create Responsive Grid Design like Bootstrap.


- Adding Grid Items with weighted width
- Adding weighted width for xs: Extra Small, sm: Small, mb: Medium, lg: Large, xl: Extra Large, xxl: Extra Extra Large Devices
- Adding Padding between Grid Items

![](example_anim.gif)
![](iOS_example.gif)
![](android_example.gif)


# Usage

Use `ResponsiveGrid` Widget to create Responsive Grid, Append `ResponsiveGridItem` as children

```dart
ResponsiveGrid(
    gridSpacing: 8,
    children: [
      ResponsiveGridItem(
        child: _buildColorContainer(Colors.red),
        xs: 50,
        sm: 60,
        md: 70,
        lg: 80,
        xl: 90,
        xxl: 100,
      ),
      ResponsiveGridItem(
        child: _buildColorContainer(Colors.green),
        xs: 50,
        sm: 60,
        md: 70,
        lg: 80,
        xl: 90,
        xxl: 100,
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
        child: _buildColorContainer(Colors.red),
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
    ]
```

