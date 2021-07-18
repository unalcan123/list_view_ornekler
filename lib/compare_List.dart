// compare sorting

void main() {
  int compare(String a, String b) {
    if (a.length < b.length) {
      return -1;
    } else if (a.length == b.length) {
      return 0;
    } else {
      return 1;
    }
  }

  hafta.sort(
    (a, b) {
      print('a:$a');
      print('b:$b');
      print('******');
      return compare(a, b);
    },
  );
  print(hafta);
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
