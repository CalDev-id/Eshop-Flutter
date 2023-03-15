part of 'model.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final String description;
  final String image;
  final double price;
  final double rate;
  final int sale;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rate,
    required this.sale,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        description,
        image,
        price,
        rate,
        sale,
      ];
}

List<Product> mockProduct = [
  const Product(
      id: 1,
      name: "Sepatu bang Mesi",
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      image: 'assets/images/adudu2.png',
      price: 250000,
      rate: 4.2,
      sale: 100),
  const Product(
      id: 2,
      name: "NVIDIA RTX 3060",
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      image: 'assets/images/rtx.png',
      price: 1200000,
      rate: 1.0,
      sale: 200),
  const Product(
      id: 3,
      name: "Cool Stuff",
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      image: 'assets/images/giga.png',
      price: 500000,
      rate: 4.3,
      sale: 700),
  const Product(
      id: 4,
      name: "Idol Kpop",
      description:
          'Getting ready  for a facation to Tokyo? a beautifull town in japan whose main vehicle is a boat and travels by boat!! there is no way there.',
      image: 'assets/images/cewe.png',
      price: 800000,
      rate: 5.0,
      sale: 900),
];
