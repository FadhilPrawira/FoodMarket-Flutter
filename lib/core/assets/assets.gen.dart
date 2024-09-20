/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_add_box_outlined.svg
  SvgGenImage get icAddBoxOutlined =>
      const SvgGenImage('assets/icons/ic_add_box_outlined.svg');

  /// File path: assets/icons/ic_dotted_border_photo.svg
  SvgGenImage get icDottedBorderPhoto =>
      const SvgGenImage('assets/icons/ic_dotted_border_photo.svg');

  /// File path: assets/icons/ic_home_normal.svg
  SvgGenImage get icHomeNormal =>
      const SvgGenImage('assets/icons/ic_home_normal.svg');

  /// File path: assets/icons/ic_order_normal.svg
  SvgGenImage get icOrderNormal =>
      const SvgGenImage('assets/icons/ic_order_normal.svg');

  /// File path: assets/icons/ic_profile_normal.svg
  SvgGenImage get icProfileNormal =>
      const SvgGenImage('assets/icons/ic_profile_normal.svg');

  /// File path: assets/icons/ic_remove_box_outlined.svg
  SvgGenImage get icRemoveBoxOutlined =>
      const SvgGenImage('assets/icons/ic_remove_box_outlined.svg');

  /// File path: assets/icons/ic_shop.svg
  SvgGenImage get icShop => const SvgGenImage('assets/icons/ic_shop.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        icAddBoxOutlined,
        icDottedBorderPhoto,
        icHomeNormal,
        icOrderNormal,
        icProfileNormal,
        icRemoveBoxOutlined,
        icShop
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_food_1.jpg
  AssetGenImage get imgFood1 =>
      const AssetGenImage('assets/images/img_food_1.jpg');

  /// File path: assets/images/img_food_2.jpg
  AssetGenImage get imgFood2 =>
      const AssetGenImage('assets/images/img_food_2.jpg');

  /// File path: assets/images/img_food_3.jpg
  AssetGenImage get imgFood3 =>
      const AssetGenImage('assets/images/img_food_3.jpg');

  /// File path: assets/images/img_order_created.jpg
  AssetGenImage get imgOrderCreated =>
      const AssetGenImage('assets/images/img_order_created.jpg');

  /// File path: assets/images/img_order_empty.jpg
  AssetGenImage get imgOrderEmpty =>
      const AssetGenImage('assets/images/img_order_empty.jpg');

  /// File path: assets/images/img_profile.jpg
  AssetGenImage get imgProfile =>
      const AssetGenImage('assets/images/img_profile.jpg');

  /// File path: assets/images/img_register_completed.jpg
  AssetGenImage get imgRegisterCompleted =>
      const AssetGenImage('assets/images/img_register_completed.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        imgFood1,
        imgFood2,
        imgFood3,
        imgOrderCreated,
        imgOrderEmpty,
        imgProfile,
        imgRegisterCompleted
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
