import 'package:get/get.dart';

import '../model/getappsettings_model.dart';

class GetappsettingsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Getappsettings.fromJson(map);
      if (map is List)
        return map.map((item) => Getappsettings.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Getappsettings?> getGetappsettings(int id) async {
    final response = await get('getappsettings/$id');
    return response.body;
  }

  Future<Response<Getappsettings>> postGetappsettings(
          Getappsettings getappsettings) async =>
      await post('getappsettings', getappsettings);
  Future<Response> deleteGetappsettings(int id) async =>
      await delete('getappsettings/$id');
}
