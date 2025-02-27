import 'package:book_st/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});
  final double radius = 16;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              textString: '19.99€',
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(radius),
                  topLeft: Radius.circular(radius)),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              fontSize: 16,
              textString: 'Free preview',
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(radius),
                  topRight: Radius.circular(radius)),
            ),
          ),
        ],
      ),
    );
  }
}
