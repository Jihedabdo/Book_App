import 'package:book_st/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_st/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:book_st/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomBookDetailsAppbar(),
                BookDetailsSection(),
                Expanded(
                  child: const SizedBox(
                    height: 40,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// class custmew extends StatelessWidget {
//   const custmew({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//           child: Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.close,
//                   size: 30,
//                 ),
//                 color: Colors.white,
//               ),
//               const Spacer(),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.shopping_cart_checkout,
//                   size: 30,
//                 ),
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 50,
//         ),
//         SizedBox(
//           width: 200,
//           child: AspectRatio(
//             aspectRatio: 2.7 / 4,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Colors.amber,
//                 image: DecorationImage(
//                     image: AssetImage(AssetsData.Testmage), fit: BoxFit.fill),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 40,
//         ),
//         SizedBox(
//             width: MediaQuery.of(context).size.width * .5,
//             child: Text(
//               "AssetsData.titleText  style: Styles.",
//               style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
//               maxLines: 1,
//             )),
//         const SizedBox(
//           width: 5,
//         ),
//         Text(
//           "data sadd",
//           style: Styles.textStyle16,
//         ),
//         const SizedBox(
//           width: 5,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             BookRating(),
//           ],
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         GestureDetector(
//           onTap: () => showConfirmationBottomSheet(context),
//           child: Container(
//             height: 50,
//             width: 250,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(25)),
//             ),
//             child: Row(
//               children: [
//                 // الجزء الأبيض مع السعر
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(25),
//                         bottomLeft: Radius.circular(25),
//                       ),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       '19.99€',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//                 // الجزء الأحمر مع "Free preview"
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.redAccent,
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(25),
//                         bottomRight: Radius.circular(25),
//                       ),
//                     ),
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Free preview',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
