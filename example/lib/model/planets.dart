import 'dart:convert';

import 'package:flutter/material.dart';

class Planets {
  final String name;
  final String description;
  final String earthDays;
  final String url;
  Planets({
    @required this.name,
    @required this.description,
    @required this.earthDays,
    @required this.url,
  });
}
