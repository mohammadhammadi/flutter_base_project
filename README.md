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

Screenshots:
![Model](https://private-user-images.githubusercontent.com/13082423/299413305-1598a1e8-8a61-4c79-8f1f-2b50e2e7ff5c.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDYxMTk2ODYsIm5iZiI6MTcwNjExOTM4NiwicGF0aCI6Ii8xMzA4MjQyMy8yOTk0MTMzMDUtMTU5OGExZTgtOGE2MS00Yzc5LThmMWYtMmI1MGUyZTdmZjVjLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMjQlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTI0VDE4MDMwNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTY0Zjk3NGZmOThmZmEyMjdiMjA0NTgzMzBiMDhkZTA5NWM5ZjZiYTZlM2YyY2QyODE5YTg2MDQ4YjNiODJlNDAmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.fWvyzZG7uKU6cWifi2bea5XutZaq_X_YTo9qfB7_EwE)
![Model](https://private-user-images.githubusercontent.com/13082423/299413312-c020ddba-471a-499c-9f32-30b5b437ba40.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDYxMTk2ODYsIm5iZiI6MTcwNjExOTM4NiwicGF0aCI6Ii8xMzA4MjQyMy8yOTk0MTMzMTItYzAyMGRkYmEtNDcxYS00OTljLTlmMzItMzBiNWI0MzdiYTQwLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAxMjQlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMTI0VDE4MDMwNlomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTFhZWQ0NTI5MzVlZWI2MzJhNTAxNzNhMWNlMGFlZTFlMTY4N2RjOGE4ZTdmMTg5NTc1ZjgzZDkyMzQ5YzE0YTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0._EvXfYYnEyhC1f8otg30rGMDiBUM5NaTjxhJlu8Oqt8)
Gif:
![Model](https://github-production-user-asset-6210df.s3.amazonaws.com/13082423/299410843-9a454ec5-4d18-48a4-a841-de436b855463.gif?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240124%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240124T175558Z&X-Amz-Expires=300&X-Amz-Signature=48793e8a26fd406feb3192027ad6494b02e29e4c9d20f37412a0a8134c690a2d&X-Amz-SignedHeaders=host&actor_id=13082423&key_id=0&repo_id=747702336)