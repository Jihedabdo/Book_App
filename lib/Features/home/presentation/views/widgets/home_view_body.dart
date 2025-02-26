import 'package:book_st/Features/home/presentation/views/widgets/bestsellerlistview.dart';
import 'package:book_st/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_st/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:book_st/core/utils/assets.dart';
import 'package:book_st/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: FeaturedBooksListView(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  AssetsData.titleText,
                  style: Styles.textStyle20,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerList(),
          ),
        )
      ],
    );
  }
}
