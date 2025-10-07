import 'package:flutter/material.dart';
import '../properties/color.dart';

class Special {
  final String image;
  final String name;
  final double rating;
  final bool isLiked;

  const Special({
    required this.image,
    required this.name,
    required this.rating,
    this.isLiked = false,
  });
}

class SpecialCoco extends StatelessWidget {
  final List<Special> specials;
  const SpecialCoco({super.key, required this.specials});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Special Breads',
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 14,
            children: specials
                .map(
                  (special) => Container(
                    decoration: BoxDecoration(
                      color: CocoColors.primaryColor,
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(26),
                      ),
                    ),
                    width: 280,
                    height: 250,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(26),
                          ),
                          child: Image.asset(
                            special.image,
                            height: 200,
                            width: 1000,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 12,
                          right: 0,
                          left: 0,
                          child: Text(
                            special.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        Positioned(
                          top: 14,
                          left: 12,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              spacing: 3,
                              children: [
                                Icon(Icons.star, color: Colors.yellow.shade800),
                                Text(
                                  special.rating.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: CocoColors.secondaryTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: IconButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              special.isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
