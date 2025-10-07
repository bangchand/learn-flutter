import 'package:flutter/material.dart';
import '../properties/color.dart';

class Category {
  final String image;
  final String name;

  const Category({required this.image, required this.name});
}

class CategoryCoco extends StatelessWidget {
  final List<Category> categories;
  final Widget singlePage;

  const CategoryCoco(this.categories, {super.key, required this.singlePage});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => singlePage),
                );
              },
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
            spacing: 10,
            children: categories
                .map(
                  (category) => Column(
                    spacing: 8,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ClipOval(
                          child: Image.asset(category.image, height: 80),
                        ),
                      ),
                      Text(category.name),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
