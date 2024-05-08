import 'package:flutter/material.dart';
import 'package:newsapp/common/widgets/text_utils.dart';

class NewsHomeItem extends StatelessWidget {
  const NewsHomeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage("assets/images/Tebboune1.png"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 15,
          ),
          TextUtils(
            size: 12,
            textAlign: TextAlign.left,
            color: Colors.black,
            weight: FontWeight.w600,
            text: "Algerians are preparing for early elections in September",
            maxLine: 3,
          ),
          const SizedBox(
            height: 5,
          ),
          TextUtils(
            size: 12,
            textAlign: TextAlign.left,
            color: Colors.grey,
            weight: FontWeight.w400,
            text: "4 hours ago By Aya Hami",
          ),
        ],
      ),
    );
  }
}
