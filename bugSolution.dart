```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key']);
    } else {
      // Handle the error gracefully.  This is far better than a generic
      // exception.
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Re-throw the exception with a more user-friendly message
    // or implement alternative error handling to provide a more robust
    // application.  Consider logging or displaying an error to the user.
    print('An error occurred: $e');
  }
}
```