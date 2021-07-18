// compare sorting

void main() {
  print(hafta.where((element) => element.contains('cum')));
}

List<Product> products = [
  Product(name: 'car', price: 18),
  Product(name: 'toy', price: 22),
  Product(name: 'box', price: 24)
];

class Product {
  String name;
  int price;

  Product({this.name, this.price});
}

List hafta = [
  'pazartesi',
  'sali',
  'carsamba',
  'persembe',
  'cuma',
  'cumartesi',
  'pazar'
];
