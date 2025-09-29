# aifarma

## Getting Started

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assets

The assets directory houses images, fonts, and any other files you want to
include with your application.

The assets/images directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the lib/src/localization directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## Generating launcher icons

### iOS

Run dart run flutter_launcher_icons

### Android

Manually add Image Asset via Android Studio, as the flutter_launcher_icons could not effectively create an adaptive icon

## Adding image assets

Add image assets in /assets/images then run dart run image_res:main to automatically rearrange the images into 2.0x and 3.0x folders.

See https://pub.dev/packages/image_res for more information

## Running code generation

flutter packages pub run build_runner build

This will generate codes for statically refering to assets & colors, and other packages that uses code generation via build_runner.

### ApiService

api_service.dart contains services that are used to make API calls. It is generated via json file output from Swagger.
To update the services, copy the json output from Swagger and put into them into lib/src/api/swagger and run dart run debi:generate_swagger.

## L10n

Run dart run debi:generate_l10n to generate l10n files. The script will download the latest arb files from localise.biz and generate the l10n files.

Localizations currently hosted in https://localise.biz