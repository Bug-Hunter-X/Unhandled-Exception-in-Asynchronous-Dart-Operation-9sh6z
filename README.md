# Unhandled Exception in Asynchronous Dart Operation

This repository demonstrates a common error in Dart: failure to properly handle exceptions that arise within asynchronous operations.  The `bug.dart` file shows an example of an asynchronous function that makes a network request and doesn't handle potential exceptions. This can lead to unexpected app crashes.

The solution, found in `bugSolution.dart`, provides a more robust approach, showing how to handle exceptions gracefully to prevent crashes and provide a better user experience.

## How to reproduce

1. Clone this repository
2. Run `bug.dart`
3. Observe the error handling (or lack thereof). Then compare it with bugSolution.dart
4. Run `bugSolution.dart` and observe the improved error handling.