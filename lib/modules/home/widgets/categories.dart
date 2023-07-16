import 'package:flutter/material.dart';
import 'package:news_summary/constants/colors.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: AppColor.whiteColor)),
              child: const Center(
                child: Text(
                  'Category1',
                  style: TextStyle(
                    fontFamily: 'PM',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: AppColor.whiteColor)),
              child: const Center(
                child: Text(
                  'Category2',
                  style: TextStyle(
                    fontFamily: 'PM',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: AppColor.whiteColor)),
              child: const Center(
                child: Text(
                  'Category3',
                  style: TextStyle(
                    fontFamily: 'PM',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: AppColor.whiteColor)),
              child: const Center(
                child: Text(
                  'Category4',
                  style: TextStyle(
                    fontFamily: 'PM',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: AppColor.whiteColor)),
              child: const Center(
                child: Text(
                  'Category5',
                  style: TextStyle(
                    fontFamily: 'PM',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
