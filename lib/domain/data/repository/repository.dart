import 'package:masta_flutta/domain/data/api_client/hotel_api_client.dart';
import 'package:masta_flutta/domain/entity/hotel.dart';

class Repository {
  final _hotelApiClient = HotelApiClient();

  Future<Hotel> fetchHotelInfo() async {
    final hotelInfo = await _hotelApiClient.getHotelInfo();
    return hotelInfo;
  }
}
