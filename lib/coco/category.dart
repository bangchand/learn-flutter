import 'package:flutter/material.dart';
import 'package:flutter1/coco/components/category.dart';

class AllCategoryCoco extends StatelessWidget {
  final List<Category> categories;
  const AllCategoryCoco({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Categories',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                final category = categories[index];
                return Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(20),
                      ),
                      child: Image.asset(category.image, height: 170),
                    ),
                    SizedBox(height: 5),
                    Text(category.name, style: TextStyle(fontSize: 22)),
                  ],
                );
              }, childCount: categories.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
