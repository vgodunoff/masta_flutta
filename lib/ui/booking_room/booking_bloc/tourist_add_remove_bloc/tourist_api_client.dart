import 'package:masta_flutta/domain/entity/tourist.dart';

class TouristApiClient {
  void addTourist(List<Tourist> tourists) {
    tourists.add(Tourist(
        name: '',
        surname: '',
        birthDate: '',
        citizen: '',
        passportID: '',
        passportExpireDate: ''));
  }

  void removeTourist(List<Tourist> tourists) {
    tourists.removeLast();
  }
}
