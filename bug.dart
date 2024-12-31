```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data like jsonData['key']
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error fetching data: $e');
    // Consider rethrowing or handling differently
    rethrow; // Re-throw to allow higher levels to handle
  }
}
```