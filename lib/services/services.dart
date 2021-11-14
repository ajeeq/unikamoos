// Import directives
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

// List of Models
import 'package:unikamoos/models/mandarin.dart';

class Services {
  // Fetch content from the json file
  static Future<List<String>> readJson() async {
    try {
      final String response = await rootBundle.loadString('assets/sample.json');
      
      if (response.isNotEmpty) {
        final data = await json.decode(response);
        return data;
      }
      else {
        const data = null;
        return data;
      }
    } catch (e) {
      rethrow;
    }
    // final data = await json.decode(response);
    // setState(() {
    //   _items = data["items"];
    // });
  }
}