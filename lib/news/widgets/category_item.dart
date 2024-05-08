// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:newsapp/common/widgets/text_utils.dart';
import 'package:newsapp/news/viewModels/news_view_model.dart';
import 'package:provider/provider.dart';

class CategorieItem extends StatelessWidget {
  const CategorieItem({
    super.key,
    required this.text,
    required this.index,
  });

  final String text;
  final int index;

  static List<String> itemsCategory = [
    "All",
    "Health",
    "Politics",
    "Sports",
    "Art",
    "Food",
    "Health",
    "Politics",
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, value, child) => InkWell(
        splashColor: Colors.white,
        onTap: () {
          value.setSelectedCategory(index);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                TextUtils(
                    size: 12,
                    color: index == value.selectedCategory
                        ? Colors.black
                        : Colors.grey.shade400,
                    weight: FontWeight.w500,
                    text: text),
                const SizedBox(
                  height: 3,
                ),
                if (index == value.selectedCategory)
                  Container(
                    width: 15,
                    height: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
