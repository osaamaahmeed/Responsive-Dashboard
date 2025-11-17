import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpemsesItemHeader extends StatelessWidget {
  const AllExpemsesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60,
              maxHeight: 60
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackground ?? Color(0xFFFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xFF4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Expanded(child: SizedBox()),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: imageColor == null ? Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
