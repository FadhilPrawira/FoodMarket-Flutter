import '../../../core/core.dart';

class MenuModel {
  final String name;
  final String imageUrl;
  final double rate;
  final int price;
  final String description;
  final String ingredients;

  MenuModel({
    required this.name,
    required this.imageUrl,
    required this.rate,
    required this.price,
    required this.description,
    required this.ingredients,
  });
}

final List<MenuModel> mockFoods = [
  MenuModel(
    name: 'Cherry Healthy',
    imageUrl: Assets.images.imgFood1.path,
    rate: 3.8,
    price: 12289900,
    description:
        'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
    ingredients: 'Seledri, telur, blueberry, madu.',
  ),
  MenuModel(
    name: 'Burger Tamayo',
    imageUrl: Assets.images.imgFood2.path,
    rate: 2,
    price: 490000,
    description:
        'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
    ingredients: 'Seledri, telur, blueberry, madu.',
  ),
  MenuModel(
    name: 'Soup Bumil',
    imageUrl: Assets.images.imgFood3.path,
    rate: 5,
    price: 289000,
    description:
        'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
    ingredients: 'Seledri, telur, blueberry, madu.',
  ),
  MenuModel(
    name: 'Cherry Healthy',
    imageUrl: Assets.images.imgFood1.path,
    rate: 3.8,
    price: 12289900,
    description:
        'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
    ingredients: 'Seledri, telur, blueberry, madu.',
  ),
  MenuModel(
    name: 'Burger Tamayo',
    imageUrl: Assets.images.imgFood2.path,
    rate: 2,
    price: 490000,
    description:
        'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
    ingredients: 'Seledri, telur, blueberry, madu.',
  ),
  MenuModel(
    name: 'Soup Bumil',
    imageUrl: Assets.images.imgFood3.path,
    rate: 5,
    price: 289000,
    description:
        'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
    ingredients: 'Seledri, telur, blueberry, madu.',
  ),
];
