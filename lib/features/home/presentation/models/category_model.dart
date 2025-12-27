class CategoryModel {
  final String title ;
  final String image ;
  CategoryModel({required this.title,required this.image});
}

List<CategoryModel> categoryModel =[
  CategoryModel(
      title: "Electronics",
      image: "assets/images/elect.jpg"
  ),
  CategoryModel(
      title: "Jewelery",
      image: "assets/images/jewel.jpg"
  ),
  CategoryModel(
      title: "men's wear",
      image: "assets/images/man.jpg"
  ),
  CategoryModel(
      title: "woman's wear",
      image: "assets/images/woman.png"
  ),
];