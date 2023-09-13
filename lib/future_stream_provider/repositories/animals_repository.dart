import 'dart:math';

enum Animals {
  harimau('assets/images/harimau.jpg'),
  kucing('assets/images/cat.jpg'),
  singa('assets/images/singa.jpg');

  const Animals(this.path);

  final String path;
}

class AnimalRepository {
  Future<Animals> getAnimal(String city) async {
    await Future.delayed(Duration(seconds: 1));
    switch (Random().nextInt(4)) {
      case 0:
        return Animals.harimau;
      case 1:
        return Animals.singa;
      case 2:
        return Animals.kucing;
      default:
        throw Exception("Gagal Ambil Data");
    }
  }

  Stream<Animals> getAnimalStream(String city) async* {
    while (true) {
      yield await getAnimal(city);
    }
  }
}
