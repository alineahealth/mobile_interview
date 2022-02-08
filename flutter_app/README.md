# Flutter App

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)
[![License: MIT][license_badge]][license_link]

---

## Getting Started 🚀

To run this project, just:

```sh
$ flutter run
```


## Running Tests 🧪

To run all unit and widget tests use the following command:

```sh
$ melos test
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```


## Lint and good practices🧪

To analyse the packages and modules dependencies, run.

```sh
$ melos analyse
```

To format your code, run:

```sh
$ melos format
```


## Updating Packages 🧪

To update all packages and modules, run:

```sh
$ melos update
```

To upgrade the packages and modules dependencies, run.

```sh
$ melos upgrade
```


## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].
Each feature module has the respective translations.


### Adding Strings

1. To add a new localizable string to an existing module, just update the json file inside the specific feature_localizations module.

2. To create a new feature localization module, just follow the authentication example, attached to the repository. You'll need to update the ModuleLocalizationDelegate and LocalizationSDK Configuration (localizations_sdk\lib\src\i18n\configuration.dart - localizationsDelegates).


### Adding Supported Languages

1. For each supported locale, add a new one at LocalizationSDK Configuration (localizations_sdk\lib\src\i18n\configuration.dart - supportedLanguages).

[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT


### Build runner:
To generate code by the build runner, run:
```sh
$ flutter pub run build_runner build --delete-conflicting-outputs
```