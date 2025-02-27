import 'package:book_st/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.amber,
            image: DecorationImage(
                image: AssetImage(AssetsData.Testmage), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
