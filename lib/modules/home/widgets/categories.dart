import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/constants/assets.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/riverpod/riverpod.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final homeScreenLogic = ref.watch(homeScreenProvider);
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                homeScreenLogic.getListofGeneralNews(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homeScreenLogic.isSelected == "general"
                              ? AppColor.primaryColor
                              : AppColor.transparentColor, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        minRadius: MediaQuery.of(context).size.width * 0.06,
                        foregroundImage: const AssetImage(Images.generalImage),
                      ),
                    ),
                    const Text(
                      "General",
                      style: TextStyle(fontFamily: 'PR', fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                homeScreenLogic.getListofSportsNews(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homeScreenLogic.isSelected == "sports"
                              ? AppColor.primaryColor
                              : AppColor.transparentColor, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        minRadius: MediaQuery.of(context).size.width * 0.06,
                        foregroundImage: const AssetImage(Images.sportsImage),
                      ),
                    ),
                    const Text(
                      "Sports",
                      style: TextStyle(fontFamily: 'PR', fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                homeScreenLogic.getListofBusinessNews(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homeScreenLogic.isSelected == "business"
                              ? AppColor.primaryColor
                              : AppColor.transparentColor, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        minRadius: MediaQuery.of(context).size.width * 0.06,
                        foregroundImage: const AssetImage(Images.businessImage),
                      ),
                    ),
                    const Text(
                      "Business",
                      style: TextStyle(fontFamily: 'PR', fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                homeScreenLogic.getListofHealthNews(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homeScreenLogic.isSelected == "health"
                              ? AppColor.primaryColor
                              : AppColor.transparentColor, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        minRadius: MediaQuery.of(context).size.width * 0.06,
                        foregroundImage: const AssetImage(Images.healthImage),
                      ),
                    ),
                    const Text(
                      "Health",
                      style: TextStyle(fontFamily: 'PR', fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                homeScreenLogic.getListofTechnologyNews(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homeScreenLogic.isSelected == "technology"
                              ? AppColor.primaryColor
                              : AppColor.transparentColor, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        minRadius: MediaQuery.of(context).size.width * 0.06,
                        foregroundImage:
                            const AssetImage(Images.technologyImage),
                      ),
                    ),
                    const Text(
                      "Technology",
                      style: TextStyle(fontFamily: 'PR', fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                homeScreenLogic.getListofScienceNews(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: homeScreenLogic.isSelected == "science"
                              ? AppColor.primaryColor
                              : AppColor.transparentColor, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        minRadius: MediaQuery.of(context).size.width * 0.06,
                        foregroundImage: const AssetImage(Images.scienceImage),
                      ),
                    ),
                    const Text(
                      "Science",
                      style: TextStyle(fontFamily: 'PR', fontSize: 10),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
/*
class CategoriesAvatar extends StatelessWidget {
  const CategoriesAvatar(
      {required this.categoryTitle, required this.categoryImage, super.key});
  final String categoryTitle;
  final String categoryImage;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final homeScreenLogic = ref.watch(homeScreenProvider);
        return GestureDetector(
          onTap: () {
            homeScreenLogic.
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColor.primaryColor, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  child: CircleAvatar(
                    minRadius: MediaQuery.of(context).size.width * 0.06,
                    foregroundImage: AssetImage(categoryImage),
                  ),
                ),
                Text(
                  categoryTitle,
                  style: const TextStyle(fontFamily: 'PR', fontSize: 10),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
*/