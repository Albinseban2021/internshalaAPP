import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:internshala/Model/internshipList.dart';

class ApiService {
  Future<InternshipList> fetchInternships() async {
    final response = await http
        .get(Uri.parse('https://internshala.com/flutter_hiring/search'));

    if (response.statusCode == 200) {
      return InternshipList.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load internships');
    }
  }
}
