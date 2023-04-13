/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAppGen {
  const $AssetsAppGen();

  $AssetsAppAstraZenecaGen get astraZeneca => const $AssetsAppAstraZenecaGen();
  $AssetsAppKolonyKeeperGen get kolonyKeeper =>
      const $AssetsAppKolonyKeeperGen();
  $AssetsAppRookieRoostersGen get rookieRoosters =>
      const $AssetsAppRookieRoostersGen();
}

class $AssetsAppAstraZenecaGen {
  const $AssetsAppAstraZenecaGen();

  /// File path: assets/app/astra-zeneca/isologotype-negative.png
  AssetGenImage get isologotypeNegative =>
      const AssetGenImage('assets/app/astra-zeneca/isologotype-negative.png');

  /// File path: assets/app/astra-zeneca/isologotype.png
  AssetGenImage get isologotype =>
      const AssetGenImage('assets/app/astra-zeneca/isologotype.png');

  /// File path: assets/app/astra-zeneca/isotype-negative.png
  AssetGenImage get isotypeNegative =>
      const AssetGenImage('assets/app/astra-zeneca/isotype-negative.png');

  /// File path: assets/app/astra-zeneca/isotype.png
  AssetGenImage get isotype =>
      const AssetGenImage('assets/app/astra-zeneca/isotype.png');

  /// File path: assets/app/astra-zeneca/logotype.png
  AssetGenImage get logotype =>
      const AssetGenImage('assets/app/astra-zeneca/logotype.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [isologotypeNegative, isologotype, isotypeNegative, isotype, logotype];
}

class $AssetsAppKolonyKeeperGen {
  const $AssetsAppKolonyKeeperGen();

  /// File path: assets/app/kolony-keeper/isologotype-negative.png
  AssetGenImage get isologotypeNegative =>
      const AssetGenImage('assets/app/kolony-keeper/isologotype-negative.png');

  /// File path: assets/app/kolony-keeper/isologotype-vertical-negative.png
  AssetGenImage get isologotypeVerticalNegative => const AssetGenImage(
      'assets/app/kolony-keeper/isologotype-vertical-negative.png');

  /// File path: assets/app/kolony-keeper/isologotype-vertical.png
  AssetGenImage get isologotypeVertical =>
      const AssetGenImage('assets/app/kolony-keeper/isologotype-vertical.png');

  /// File path: assets/app/kolony-keeper/isologotype.png
  AssetGenImage get isologotype =>
      const AssetGenImage('assets/app/kolony-keeper/isologotype.png');

  /// File path: assets/app/kolony-keeper/isotype-negative.png
  AssetGenImage get isotypeNegative =>
      const AssetGenImage('assets/app/kolony-keeper/isotype-negative.png');

  /// File path: assets/app/kolony-keeper/isotype.png
  AssetGenImage get isotype =>
      const AssetGenImage('assets/app/kolony-keeper/isotype.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        isologotypeNegative,
        isologotypeVerticalNegative,
        isologotypeVertical,
        isologotype,
        isotypeNegative,
        isotype
      ];
}

class $AssetsAppRookieRoostersGen {
  const $AssetsAppRookieRoostersGen();

  /// File path: assets/app/rookie-roosters/isologotype-negative.png
  AssetGenImage get isologotypeNegative => const AssetGenImage(
      'assets/app/rookie-roosters/isologotype-negative.png');

  /// File path: assets/app/rookie-roosters/isologotype-vertical-negative.png
  AssetGenImage get isologotypeVerticalNegative => const AssetGenImage(
      'assets/app/rookie-roosters/isologotype-vertical-negative.png');

  /// File path: assets/app/rookie-roosters/isologotype-vertical.png
  AssetGenImage get isologotypeVertical => const AssetGenImage(
      'assets/app/rookie-roosters/isologotype-vertical.png');

  /// File path: assets/app/rookie-roosters/isologotype.png
  AssetGenImage get isologotype =>
      const AssetGenImage('assets/app/rookie-roosters/isologotype.png');

  /// File path: assets/app/rookie-roosters/isotype-negative.png
  AssetGenImage get isotypeNegative =>
      const AssetGenImage('assets/app/rookie-roosters/isotype-negative.png');

  /// File path: assets/app/rookie-roosters/isotype.png
  AssetGenImage get isotype =>
      const AssetGenImage('assets/app/rookie-roosters/isotype.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        isologotypeNegative,
        isologotypeVerticalNegative,
        isologotypeVertical,
        isologotype,
        isotypeNegative,
        isotype
      ];
}

class Assets {
  Assets._();

  static const $AssetsAppGen app = $AssetsAppGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
