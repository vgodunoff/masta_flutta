import 'package:masta_flutta/domain/data/api_client/network_client.dart';
import 'package:masta_flutta/domain/entity/hotel.dart';

class HotelApiClient {
  final _networkClient = NetworkClient();

  Future<Hotel> getHotelInfo() async {
    Hotel parser(dynamic json) {
      final jsonMap = json as Map<String, dynamic>;
      final response = Hotel.fromJson(jsonMap);
      return response;
    }

    final result =
        _networkClient.get('/v3/75000507-da9a-43f8-a618-df698ea7176d', parser);

    return result;
  }
}
