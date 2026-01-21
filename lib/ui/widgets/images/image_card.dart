import 'package:credpal_test/ui/widgets/general/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageCard extends StatelessWidget {
  final double? width;
  final double? height;
  final double? size;
  final String imageURL;
  final BorderRadius? borderRadius;
  final Color? color;
  final GestureTapCallback? onTap;
  final bool _isLocal;
  final BoxFit? fit;

  final double? placeholderSize;
  final bool responsive;

  const ImageCard.network(
    this.imageURL, {
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.size,
    this.color,
    this.onTap,
    this.fit,
    this.responsive = false,
    this.placeholderSize,
  }) : _isLocal = false;

  const ImageCard.local(
    this.imageURL, {
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.size,
    this.color,
    this.onTap,
    this.fit,
    this.responsive = false,
    this.placeholderSize,
  }) : _isLocal = true;

  String get _path => imageURL.startsWith('assets/') ? imageURL : 'assets/$imageURL';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Stack(
        children: [
          imageURL.isEmpty
              ? const SizedBox.shrink()
              : _isLocal
              ? imageURL.contains('svg')
                    ? _Svg(_path, width: width, height: height, size: size, color: color, fit: fit)
                    : Image.asset(
                        _path,
                        fit: fit ?? BoxFit.contain,
                        width: (size ?? width),
                        height: (size ?? height),
                        color: color,
                      )
              : const SizedBox.shrink(),
          if (onTap != null)
            CustomSizedbox(
              height: height,
              width: width,
              size: size,
              child: Material(
                color: color ?? Colors.white,
                type: MaterialType.transparency,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.zero),
                child: InkWell(
                  onTap: onTap ?? () {},
                  customBorder: RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.zero,
                  ),
                  child: const SizedBox.shrink(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Svg extends StatelessWidget {
  final String path;
  final num? size;
  final num? height;
  final num? width;
  final Color? color;
  final BoxFit? fit;

  const _Svg(this.path, {this.size, this.color, this.height, this.width, this.fit});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: (size ?? height)?.toDouble(),
      width: (size ?? width)?.toDouble(),
      fit: fit ?? BoxFit.contain,
      colorFilter: color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
