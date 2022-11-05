class Product {
  String id;
  String title;
  String imageUrl;
  String subTitle;
  String description;
  int price;
  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.subTitle,
    required this.description,
    required this.price,
  });

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        title = json['title'] as String,
        imageUrl = json['image'] as String,
        subTitle = json['subtitle'] as String,
        description = json['description'] as String,
        price = json['price'] as int;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, imageUrl: $imageUrl, subtitle: $subTitle, description: $description, price: $price)';
  }
}
