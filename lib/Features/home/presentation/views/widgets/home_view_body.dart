import 'package:book_st/Features/home/presentation/views/widgets/bastse_seller_list_viwe_itme.dart';
import 'package:book_st/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_st/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:book_st/core/utils/assets.dart';
import 'package:book_st/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 30,
          ),
          Text(
            AssetsData.titleText,
            style: Styles.textStyle20,
          ),
          BastseSellerListViweItme(),
        ],
      ),
    );
  }
}
