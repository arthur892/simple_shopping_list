import 'package:simple_shopping_list/data/repository.dart';
import 'package:simple_shopping_list/models/product.dart';

class RepositoryData implements Repository {
  List<Product> _products = [];

  RepositoryData() {
    _products.add(Product(
        name: 'Hemd',
        description: 'Ein Hemd, das wirklich gut passt',
        price: 49.99));
    _products.add(Product(
        name: 'Hose',
        description: 'Eine schicke Hose für jeden Anlass',
        price: 59.99));
    _products.add(Product(
        name: 'Schuhe', description: 'Bequeme Schuhe aus Leder', price: 89.99));
    _products.add(Product(
        name: 'Jacke', description: 'Eine warme Winterjacke', price: 119.99));
    _products.add(Product(
        name: 'Mütze',
        description: 'Eine stylische Mütze aus Wolle',
        price: 19.99));
    _products.add(Product(
        name: 'T-Shirt',
        description: 'Ein bequemer Baumwoll-T-Shirt',
        price: 14.99));
    _products.add(Product(
        name: 'Jeans', description: 'Eine robuste Jeanshose', price: 49.99));
    _products.add(Product(
        name: 'Sneakers',
        description: 'Modische Sneakers für den Alltag',
        price: 59.99));
    _products.add(Product(
        name: 'Sonnenbrille',
        description: 'Stylische Sonnenbrille mit UV-Schutz',
        price: 24.99));
    _products.add(Product(
        name: 'Uhr', description: 'Eine elegante Armbanduhr', price: 99.99));
    _products.add(Product(
        name: 'Rucksack',
        description: 'Ein langlebiger Rucksack für Reisen',
        price: 39.99));
    _products.add(Product(
        name: 'Gürtel',
        description: 'Ein Ledergürtel mit Metallschnalle',
        price: 19.99));
    _products.add(Product(
        name: 'Handschuhe',
        description: 'Warme Handschuhe aus Leder',
        price: 29.99));
    _products.add(Product(
        name: 'Mantel',
        description: 'Ein eleganter Wintermantel',
        price: 149.99));
    _products.add(Product(
        name: 'Hut', description: 'Ein stilvoller Hut aus Filz', price: 34.99));
    _products.add(Product(
        name: 'Schal', description: 'Ein weicher Wollschal', price: 24.99));
    _products.add(Product(
        name: 'Socken',
        description: 'Bequeme Socken im 3er-Pack',
        price: 9.99));
    _products.add(Product(
        name: 'Pullover',
        description: 'Ein warmer Strickpullover',
        price: 59.99));
    _products.add(Product(
        name: 'Lederjacke',
        description: 'Eine coole Lederjacke für den Herbst',
        price: 199.99));
    _products.add(Product(
        name: 'Regenschirm',
        description: 'Ein kompakter Regenschirm für unterwegs',
        price: 12.99));
  }

  @override
  List<Product> getAllProducts() {
    return _products;
  }

  @override
  void addProduct(Product product) {
    _products.add(product);
  }
}
