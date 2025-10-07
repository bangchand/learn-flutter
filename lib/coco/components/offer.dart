import 'package:flutter/material.dart';
import '../properties/color.dart';

class OfferCoco extends StatefulWidget {
  final List<String> offersImages;
  final int offersIndex;

  const OfferCoco({
    super.key,
    required this.offersImages,
    required this.offersIndex,
  });

  @override
  State<OfferCoco> createState() => _OfferCocoState();
}

class _OfferCocoState extends State<OfferCoco> {
  late List<String> offersImages;
  late int offersIndex;
  double _dragStart = 0.0;

  @override
  void initState() {
    super.initState();
    offersIndex = widget.offersIndex;
    offersImages = widget.offersImages;
  }

  @override
  Widget build(BuildContext context) {
    return
    // offers
    GestureDetector(
      onPanStart: (details) {
        _dragStart = details.globalPosition.dx;
      },
      onPanEnd: (details) {
        if (_dragStart != 0) {
          double difference = details.velocity.pixelsPerSecond.dx;
          if (difference < 100) {
            if (offersIndex != offersImages.length - 1) {
              setState(() {
                offersIndex++;
              });
            }
          }
          if (difference > 100) {
            if (offersIndex != 0) {
              setState(() {
                offersIndex--;
              });
            }
          }
        }
      },
      child: Column(
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Special Offers',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: CocoColors.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
            child: Image.asset(
              offersImages[offersIndex],
              height: 200,
              width: 1000,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            children: offersImages
                .asMap()
                .entries
                .map(
                  (offersImage) => Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: offersImage.key == offersIndex
                          ? CocoColors.primaryColor
                          : Colors.grey,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
