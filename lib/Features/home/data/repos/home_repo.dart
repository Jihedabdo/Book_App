import 'package:book_st/Features/home/data/models/book_modle/book_modle.dart';
import 'package:book_st/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModle>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModle>>> fetchFeaturedBooks();
}
