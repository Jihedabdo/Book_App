import 'package:book_st/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BastseSellerListViweItme extends StatelessWidget {
  const BastseSellerListViweItme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage(AssetsData.Testmage), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(AssetsData.titleText),
              Text(AssetsData.titleText),
            ],
          ),
        ],
      ),
    );
  }
}
