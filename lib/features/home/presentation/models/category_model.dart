class CategoryModel {
  final String title ;
  final String image ;
  CategoryModel({required this.title,required this.image});
}

List<CategoryModel> categoryModel =[
  CategoryModel(
      title: "electronics",
      image: "assets/images/elect.jpg"
  ),
  CategoryModel(
      title: "jewelery",
      image: "assets/images/jewel.jpg"
  ),
  CategoryModel(
      title: "men's clothing",
      image: "assets/images/man.jpg"
  ),
  CategoryModel(
      title: "women's clothing",
      image: "assets/images/woman.png"
  ),
];