import 'package:flutter/material.dart';
import 'package:newsapp/common/widgets/text_utils.dart';

class StackHomeScreen extends StatelessWidget {
  const StackHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 360,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 360,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/app.png"),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 360,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
          ),
          const Positioned(
              top: 60,
              left: 20,
              child: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          Positioned(
              top: 180,
              left: 20,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white.withOpacity(0.3)),
                    child: TextUtils(
                        size: 14,
                        color: Colors.white,
                        weight: FontWeight.bold,
                        text: "News of the day "),
                  )
                ],
              )),
          Positioned(
              top: 230,
              left: 20,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: TextUtils(
                        size: 14,
                        color: Colors.white,
                        weight: FontWeight.bold,
                        textAlign: TextAlign.left,
                        maxLine: 4,
                        text:
                            "Injectable Diabetes Medication Shows Promise in Long-Term Management"),
                  )
                ],
              )),
          Positioned(
              top: 300,
              left: 20,
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    TextUtils(
                        size: 14,
                        color: Colors.white,
                        weight: FontWeight.w600,
                        textAlign: TextAlign.left,
                        text: "Learn more"),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
