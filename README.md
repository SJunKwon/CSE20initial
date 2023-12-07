I apologize for the formatting issue. It seems the indentation got removed. Here's the corrected version with proper formatting:

```markdown
# CSEinitial

## System Requirements

- Dart SDK Version 2.18.0 or greater.
- Flutter SDK Version 3.3.0 or greater.

## Check the UI of the Entire App

Check the UI of all the app screens from a single place by setting up the 'initialRoute' to `AppNavigation` in the `AppRoutes.dart` file.

## Application Structure

```
├── android                 - Contains files required to run the application on an Android platform.
├── assets                  - Contains all images and fonts of your application.
├── ios                     - Contains files required to run the application on an iOS platform.
├── lib                     - Most important folder in the application, used to write most of the Dart code.
│   ├── main.dart           - Starting point of the application
│   ├── core
│   │   ├── app_export.dart - Contains commonly used file imports
│   │   ├── constants       - Contains static constant class file
│   │   └── utils           - Contains common files and utilities of the application
│   ├── presentation        - Contains widgets of the screens
│   ├── routes              - Contains all the routes of the application
│   └── theme               - Contains app theme and decoration classes
└── widgets                 - Contains all custom widget classes
```

Now it should be correctly formatted.
