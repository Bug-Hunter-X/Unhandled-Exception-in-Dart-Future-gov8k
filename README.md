# Unhandled Exception in Dart Future

This repository demonstrates a common error in Dart: unhandled exceptions within asynchronous operations (`Future`s).  Ignoring exceptions in `async` functions can lead to silent failures, making debugging difficult.  This example shows the problem and provides a robust solution.

## The Problem

The `bug.dart` file contains a function that fetches data from an API.  However, it lacks proper exception handling. If the API call fails, the exception is not caught, which will cause the app to crash (or behave unexpectedly) if this `Future` isn't awaited appropriately.

## The Solution

The `bugSolution.dart` file demonstrates the correct way to handle exceptions.  A `try-catch` block is used to gracefully handle potential errors during the API call.  The solution also shows how to re-throw exceptions if needed, allowing for higher levels to implement centralized error handling.

## How to Run

1. Clone this repository.
2. Run `dart bug.dart` and `dart bugSolution.dart` in your terminal to see the difference.