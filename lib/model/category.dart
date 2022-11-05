class Category {
  String id;
  String title;
  String imageUrl;
  int numberOfProducts;
  Category({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.numberOfProducts,
  });

  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        title = json['title'] as String,
        imageUrl = json['image'] as String,
        numberOfProducts = json['numOfProducts'] as int;

  @override
  String toString() {
    return 'Category(id: $id, title: $title, imageUrl: $imageUrl, numberOfProducts: $numberOfProducts)';
  }
}
