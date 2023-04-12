import 'package:dartz/dartz.dart';

import 'utils.dart';

typedef Response<T> = Either<Failure, T>;

typedef AsyncResponse<T> = Future<Either<Failure, T>>;
