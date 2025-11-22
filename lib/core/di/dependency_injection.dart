import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../networking/dio_factory.dart';


final sl = GetIt.instance;

Future<void> setupGetIt() async {
  
  // ignore: unused_local_variable
  Dio dio = DioFactory.getDio();
}
