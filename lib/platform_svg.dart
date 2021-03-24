import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlatformSvg {
  static Widget asset(String assetName,
      {

      /// If specified, the width to use for the SVG.  If unspecified, the SVG
      /// will take the width of its parent.
      double? width,

      /// If specified, the height to use for the SVG.  If unspecified, the SVG
      /// will take the height of its parent.
      double? height,

      /// How to inscribe the picture into the space allocated during layout.
      /// The default is [BoxFit.contain].
      BoxFit fit = BoxFit.contain,
      Color? color,

      /// How to align the picture within its parent widget.
      ///
      /// The alignment aligns the given position in the picture to the given position
      /// in the layout bounds. For example, an [Alignment] alignment of (-1.0,
      /// -1.0) aligns the image to the top-left corner of its layout bounds, while a
      /// [Alignment] alignment of (1.0, 1.0) aligns the bottom right of the
      /// picture with the bottom right corner of its layout bounds. Similarly, an
      /// alignment of (0.0, 1.0) aligns the bottom middle of the image with the
      /// middle of the bottom edge of its layout bounds.
      ///
      /// If the [alignment] is [TextDirection]-dependent (i.e. if it is a
      /// [AlignmentDirectional]), then a [TextDirection] must be available
      /// when the picture is painted.
      ///
      /// Defaults to [Alignment.center].
      ///
      /// See also:
      ///
      ///  * [Alignment], a class with convenient constants typically used to
      ///    specify an [AlignmentGeometry].
      ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
      ///    relative to text direction.
      alignment = Alignment.center,

      /// The [Semantics.label] for this picture.
      ///
      /// The value indicates the purpose of the picture, and will be
      /// read out by screen readers.
      String? semanticsLabel}) {
    if (kIsWeb) {
      return Image.network("$assetName",
          width: width,
          height: height,
          fit: fit,
          color: color,
          alignment: alignment,
          semanticLabel: semanticsLabel);
    }
    return SvgPicture.asset(assetName,
        width: width,
        height: height,
        fit: fit,
        color: color,
        alignment: alignment,
        semanticsLabel: semanticsLabel);
  }

  /// If specified, the width to use for the SVG.  If unspecified, the SVG
  /// will take the width of its parent.

}
