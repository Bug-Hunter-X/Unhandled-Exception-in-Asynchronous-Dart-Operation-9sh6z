```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data from jsonData
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Here's where the bug is. If you don't handle the exception
    // appropriately, the application will likely crash.  The 
    // better approach is to re-throw the exception with a more user
    // friendly message, or gracefully handle the error to provide a better
    // user experience.
  }
}
```