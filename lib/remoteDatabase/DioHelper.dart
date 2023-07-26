import 'package:dio/dio.dart';
import 'package:foodex_api/local_database/cache_helper.dart';
import 'package:foodex_api/uitilits/enums.dart';

class DioHelper{
  static late Dio dio;

  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: 'http://206.189.103.8/api/',            //https://newsapi.org/
        receiveDataWhenStatusError: true,
        // headers: {
        //   "Content-Type":"application/json"
        // },
      ),
    );
  }

  static Future<Response> getData ({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async
  {
    token=cashHelper.getString(key: MySharedKeys.token);
    dio.options.headers= {
      "Content-Type":"application/json",
      "Accept":"application/json",
      'Authorization': "Bearer ${token ?? ""}",
    };

    return await dio.get(url,
      queryParameters: query,
    );
  }




  static Future<Response> PostData ({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,

  }) async
  {
    token=cashHelper.getString(key: MySharedKeys.token);

    dio.options.headers= {
      "Content-Type":"application/json",
      "Accept":"application/json",
      'Authorization':"Bearer ${token ?? ""}",
    };

    return await dio.post(url,
        data: data,
        queryParameters: query
    );

  }

  static Future<Response> PutData ({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? token,

  }) async
  {
    token=cashHelper.getString(key: MySharedKeys.token);

    dio.options.headers= {
      "Content-Type":"application/json",
      'Authorization': "Bearer ${token ?? ""}",
    };

    return await dio.put(url,
        data: data,
        queryParameters: query
    );

  }

}