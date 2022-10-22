import 'package:bsis_hospital/model/find_inventory_form.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'bsis_rest_client.g.dart';

@RestApi(baseUrl: "http://localhost:8080/bsis")
abstract class BsisRestClient{
  factory BsisRestClient(Dio dio, { String? baseUrl }) {
    dio.options = BaseOptions(
      connectTimeout: 30000,
      receiveTimeout: 30000,
      // contentType: "application/json",
      headers: {
        "Authorization": "Basic YWJpeTphYml5Yjk=",
        // "contentType": "application/json"
      }
    );

    return _BsisRestClient(dio, baseUrl: baseUrl);
  }

  @GET("/inventories/search/form")
  Future<FindInventoryForm> getFindInventoryFormData();
}