// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newsapp/common/widgets/text_utils.dart';
import 'package:newsapp/news/viewModels/news_view_model.dart';
import 'package:newsapp/news/widgets/categories_section.dart';
import 'package:newsapp/news/widgets/category_item.dart';
import 'package:newsapp/news/widgets/news_home_item.dart';
import 'package:newsapp/news/widgets/stack_home_screen.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // stack home screen
          StackHomeScreen(),
          SizedBox(
            height: 20,
          ),
          CategoriesSection(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextUtils(
                    size: 16,
                    color: Colors.black,
                    weight: FontWeight.bold,
                    text: "Breaking News "),
                TextUtils(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                    text: "More")
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                height: 250,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return NewsHomeItem();
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}
