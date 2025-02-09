import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttermoji/fluttermoji.dart';

/// This widget renders the Fluttermoji of the user on screen
///
/// Accepts a [radius] which defaults to 75.0
/// and a [backgroundColor] which defaults to blueAccent
///
/// Advice the users to set up their Fluttermoji first to avoid unexpected issues.
class FluttermojiCircleAvatar extends StatelessWidget {
  final double radius;
  final Color backgroundColor;
  final Fluttermoji emoji;
  final String label;

  FluttermojiCircleAvatar(this.emoji,
      {Key? key, this.radius = 75.0, required this.backgroundColor, this.label = "Fluttermoji"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var svg = SvgPicture.string(
      emoji.getSVG(),
      semanticsLabel: label,
      placeholderBuilder: (context) => Center(
        child: CupertinoActivityIndicator(),
      ),
    );
    return ClipOval(
      child: Container(
        width: radius * 2,
        height: radius * 2,
        color: backgroundColor,
        child: Padding(
          padding: EdgeInsets.only(top: (0.1 * radius)),
          child: svg,
        ),
      ),
    );
  }
}
