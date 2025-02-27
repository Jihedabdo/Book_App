import 'package:book_st/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_st/constants.dart';
import 'package:book_st/core/utils/app_router.dart';
import 'package:book_st/core/utils/assets.dart';
import 'package:book_st/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItme extends StatelessWidget {
  const BookListViewItme({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.KBookDetailsView),
      child: SizedBox(
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
                        image: AssetImage(AssetsData.Testmage),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        "AssetsData.titleText  style: Styles.",
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "data sadd",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99#",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
