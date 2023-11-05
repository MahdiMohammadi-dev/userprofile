/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ae.png
  AssetGenImage get ae => const AssetGenImage('assets/images/ae.png');

  /// File path: assets/images/ai.png
  AssetGenImage get ai => const AssetGenImage('assets/images/ai.png');

  /// File path: assets/images/as.png
  AssetGenImage get as => const AssetGenImage('assets/images/as.png');

  /// File path: assets/images/figma.png
  AssetGenImage get figma => const AssetGenImage('assets/images/figma.png');

  /// File path: assets/images/git.png
  AssetGenImage get git => const AssetGenImage('assets/images/git.png');

  /// File path: assets/images/lr.png
  AssetGenImage get lr => const AssetGenImage('assets/images/lr.png');

  /// File path: assets/images/me.jpg
  AssetGenImage get me => const AssetGenImage('assets/images/me.jpg');

  /// File path: assets/images/ps.png
  AssetGenImage get ps => const AssetGenImage('assets/images/ps.png');

  /// File path: assets/images/vs.png
  AssetGenImage get vs => const AssetGenImage('assets/images/vs.png');

  /// File path: assets/images/xd.png
  AssetGenImage get xd => const AssetGenImage('assets/images/xd.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [ae, ai, as, figma, git, lr, me, ps, vs, xd];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
