import 'dart:math';
import 'category.dart';
import 'components/special.dart';
import 'components/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/coco/components/offer.dart';
import 'package:flutter1/coco/components/header.dart';




class HomeCoco extends StatefulWidget {
  const HomeCoco({super.key});

  @override
  State<HomeCoco> createState() => _HomeCocoState();
}

class _HomeCocoState extends State<HomeCoco> {
  List<String> offersImages = [
    'assets/images/cat_smirk.jpeg',
    'assets/images/cat_glasses.jpeg',
    'assets/images/cat_screaming.jpeg',
  ];
  int offersIndex = 0;

  List<Category> categories = [
    Category(image: 'assets/images/cat_smirk.jpeg', name: 'Cup Cake'),
    Category(image: 'assets/images/cat_glasses.jpeg', name: 'Cookies'),
    Category(image: 'assets/images/cat_screaming.jpeg', name: 'Donuts'),
    Category(image: 'assets/images/cat_stressing.jpeg', name: 'Breads'),
    Category(image: 'assets/images/cat_question.jpeg', name: 'Pastry'),
  ];

  List<Category> allCategories = [
    Category(image: 'assets/images/cat_smirk.jpeg', name: 'Bread'),
    Category(image: 'assets/images/cat_glasses.jpeg', name: 'Scones'),
    Category(
      image: 'assets/images/cat_screaming.jpeg',
      name: 'Celebration Cakes',
    ),
    Category(image: 'assets/images/cat_stressing.jpeg', name: 'Cupcakes'),
    Category(image: 'assets/images/cat_question.jpeg', name: 'Dessert Jar'),
    Category(image: 'assets/images/cat_laugh.jpeg', name: 'Cake Loaf'),
    Category(image: 'assets/images/cat_blushing.jpeg', name: 'Cookies'),
    Category(image: 'assets/images/cat_ghost.jpeg', name: 'Brownies'),
    Category(image: 'assets/images/cat_flat.jpeg', name: 'Pastries'),
    Category(image: 'assets/images/cat_teary.jpeg', name: 'Tarts'),
    Category(image: 'assets/images/cat_slit.jpeg', name: 'Muffins'),
    Category(image: 'assets/images/cat_officer.jpeg', name: 'Party Packs'),
  ];

  List<Special> specialBreads = [
    Special(
      image: 'assets/images/cat_smirk.jpeg',
      name: 'Cake',
      rating: 6.2,
      isLiked: true,
    ),
    Special(
      image: 'assets/images/cat_screaming.jpeg',
      name: 'Tart',
      rating: 4.6,
    ),
    Special(
      image: 'assets/images/cat_stressing.jpeg',
      name: 'Ciabatta',
      rating: 5.1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            Header(),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                spacing: 20,
                children: [
                  // offers
                  OfferCoco(
                    offersImages: offersImages,
                    offersIndex: offersIndex,
                  ),

                  // categories
                  CategoryCoco(
                    categories,
                    singlePage: Transform.rotate(
                      angle: pi,
                      child: AllCategoryCoco(categories: allCategories),
                    ),
                  ),

                  // special breads
                  SpecialCoco(specials: specialBreads),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
