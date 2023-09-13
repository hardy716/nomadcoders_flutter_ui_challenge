import 'package:flutter/material.dart';

class CurencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final Color cardBackgroundColor;
  final Color cardContentColor;
  final int order;

  final double offsetY = -30.0;

  const CurencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.cardBackgroundColor,
    required this.cardContentColor,
    required this.order,
  });

  Offset calculateOffsetY(int orderNum) {
    double newOffsetY = offsetY * orderNum;

    return Offset(0.0, newOffsetY);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: calculateOffsetY(order),
      child: ClipPath(
        clipper: DiagonalClipper(),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: cardBackgroundColor,
            border: Border.all(
              color: cardContentColor,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: cardContentColor,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: cardContentColor,
                            fontSize: 18.0,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: cardContentColor.withOpacity(0.7),
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2.0,
                  child: Transform.translate(
                    offset: const Offset(-6.0, 12.0),
                    child: Icon(
                      icon,
                      color: cardContentColor,
                      size: 88.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 30, 0)
      ..lineTo(size.width, 30)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
