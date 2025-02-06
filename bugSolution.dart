```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (DateTime.now().millisecondsSinceEpoch % 2 == 0) {
      throw Exception('Simulated network error');
    }
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    // Implement specific timeout handling logic here
    // For example, retry the operation or show an appropriate UI message
  } on Exception catch (e) {
    print('Error fetching data: $e');
    // Handle other exceptions
  } catch (e, s) {
    print('Unexpected error: $e');
    print('Stack trace: $s');
    // Log the unexpected error with stack trace for debugging
  }
}

void main() async {
  await fetchData();
}
```