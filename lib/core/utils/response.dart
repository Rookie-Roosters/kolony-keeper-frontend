import 'package:dartz/dartz.dart';

import 'utils.dart';

typedef AsyncResponse<T> = Future<Either<Failure, T>>;
