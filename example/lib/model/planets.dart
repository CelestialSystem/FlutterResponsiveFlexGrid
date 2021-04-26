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

  Planets copyWith({
    String name,
    String description,
    String earthDays,
    String url,
  }) {
    return Planets(
      name: name ?? this.name,
      description: description ?? this.description,
      earthDays: earthDays ?? this.earthDays,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'earthDays': earthDays,
      'url': url,
    };
  }

  factory Planets.fromMap(Map<String, dynamic> map) {
    return Planets(
      name: map['name'],
      description: map['description'],
      earthDays: map['earthDays'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Planets.fromJson(String source) =>
      Planets.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Planets(name: $name, description: $description, earthDays: $earthDays, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Planets &&
        other.name == name &&
        other.description == description &&
        other.earthDays == earthDays &&
        other.url == url;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        earthDays.hashCode ^
        url.hashCode;
  }
}
