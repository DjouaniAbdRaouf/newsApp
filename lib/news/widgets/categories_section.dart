import 'package:flutter/material.dart';
import 'package:newsapp/news/widgets/category_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CategorieItem(
                    text: CategorieItem.itemsCategory[index], index: index);
              },
              scrollDirection: Axis.horizontal,
              itemCount: CategorieItem.itemsCategory.length,
            ),
          )
        ],
      ),
    );
  }
}
