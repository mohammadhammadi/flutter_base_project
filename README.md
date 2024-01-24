# Flutter Base Project README

This repository contains a Flutter project that follows a feature-first architecture and utilizes the `flutter_riverpod` package for state management and `freezed` for code generation.

## Features

- Good project architecture using feature-first approach.
- State management powered by `flutter_riverpod`.
- Code generation with `freezed`.
- API requests using `dio`.
- Routing using `go_router`.

## Packages Used

The project utilizes the following packages from [pub.dev](https://pub.dev):

- `cupertino_icons: ^1.0.2`
- `dio: ^5.4.0`
- `shared_preferences: ^2.2.2`
- `flutter_riverpod: ^2.4.9`
- `freezed_annotation: ^2.4.1`
- `json_annotation: ^4.8.1`
- `riverpod_annotation: ^2.3.3`
- `pretty_dio_logger: ^1.3.1`
- `go_router: ^13.0.1`
- `cached_network_image: ^3.3.1`

Make sure to include these packages in your `pubspec.yaml` file before running the project.

## Getting Started

To get started with this Flutter project, follow the steps below:

1. Clone the repository to your local machine:

git clone https://github.com/mohammadhammadi/flutter_base_project.git

2. Ensure that you have Flutter installed on your machine. If not, refer to the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for instructions.

3. Open the project in your preferred IDE or editor.

4. Install the project dependencies by running the following command in the project root directory:

flutter pub get

5. Run the app on a connected device or emulator:

flutter run

## App Overview

The app's home page fetches user data from a free API using `dio` for API requests and displays it in a list. Each list item shows the user's name, email, and profile image. The user can swipe any list item to delete it. The list can also be refreshed by swiping down.

When a list item is pressed, a bottom modal is shown, providing more detailed information about the user.

## Routing

The app utilizes `go_router` package for routing. It provides a flexible and powerful routing solution for your Flutter application.

## Contributing

Contributions to this Flutter project are welcome. If you encounter any issues or have ideas for improvements, feel free to open an issue or submit a pull request.