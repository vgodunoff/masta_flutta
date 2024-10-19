class TouristRepository {
  int _counterTourists = 0;

  void addTourist() {
    _counterTourists++;
  }

  void removeTourist() {
    if (_counterTourists >= 1) {
      _counterTourists--;
    }
  }

  int get counterTourists => _counterTourists;

  TouristRepository();

  //List<Tourist> get tourists => _touristData.tourists;

  //void addTourist() => _client.addTourist(_touristData.tourists);
}
