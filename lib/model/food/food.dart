import 'package:english_words/english_words.dart';
import 'package:food_drive/model/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
@immutable
abstract class Food implements _$Food {
  @JsonSerializable(explicitToJson: true)
  const Food._();

  @JsonSerializable(explicitToJson: true)
  const factory Food({
    @required int id,
    @required String imageUrl,
    @required String name,
    @required num price,
    @required num rating,
    @required Category category,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}

final foodsData = <Food>[
  // Pizza
  Food(
    id: 1,
    imageUrl: 'https://www.simplyrecipes.com/wp-content/uploads/2007/01/homemade-pizza-horiz-a-1200.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pizza',
    price: 13.55,
    rating: 4.5,
    category: categories[1],
  ),
  Food(
    id: 2,
    imageUrl: 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Homemade-Pizza_EXPS_HCA20_376_E07_09_2b-2.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pizza',
    price: 13.55,
    rating: 4.5,
    category: categories[1],
  ),
  Food(
    id: 3,
    imageUrl: 'https://www.simplyrecipes.com/wp-content/uploads/2019/09/easy-pepperoni-pizza-lead-4.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pizza',
    price: 13.55,
    rating: 4.5,
    category: categories[1],
  ),
  Food(
    id: 4,
    imageUrl: 'https://www.indianhealthyrecipes.com/wp-content/uploads/2015/10/pizza-recipe-1-500x500.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pizza',
    price: 13.55,
    rating: 4.5,
    category: categories[1],
  ),
  Food(
    id: 5,
    imageUrl: 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Pizza-from-Scratch_EXPS_FT20_8621_F_0505_1_home-696x696.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pizza',
    price: 13.55,
    rating: 4.5,
    category: categories[1],
  ),
  Food(
    id: 6,
    imageUrl: 'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/216054.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pizza',
    price: 13.55,
    rating: 4.5,
    category: categories[1],
  ),
  // Burger
  Food(
    id: 7,
    imageUrl:
        'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_900x675%2Fpublic%2Fclassic-burgers-u.jpg%3Fitok%3DImHVMgXO',
    name: '${generateWordPairs().take(1).first.asPascalCase} Burger',
    price: 13.55,
    rating: 4.5,
    category: categories[2],
  ),
  Food(
    id: 8,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRoy5-sqjt8ty75tlaxSnvlEs4QBPWcwsIqig&usqp=CAU',
    name: '${generateWordPairs().take(1).first.asPascalCase} Burger',
    price: 13.55,
    rating: 4.5,
    category: categories[2],
  ),
  Food(
    id: 9,
    imageUrl: 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2004/2/25/0/bw2b07_hambugers1.jpg.rend.hgtvcom.826.620.suffix/1558017418187.jpeg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Burger',
    price: 13.55,
    rating: 4.5,
    category: categories[2],
  ),
  Food(
    id: 10,
    imageUrl: 'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/exps28800_UG143377D12_18_1b_RMS.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Burger',
    price: 13.55,
    rating: 4.5,
    category: categories[2],
  ),
  Food(
    id: 11,
    imageUrl:
        'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/2019_df_retail_butter-burger_20912_760x580.jpg?ext=.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Burger',
    price: 13.55,
    rating: 4.5,
    category: categories[2],
  ),
  Food(
    id: 12,
    imageUrl: 'https://www.telegraph.co.uk/content/dam/recipes/2020/06/24/burger_trans_NvBQzQNjv4BqdtaxvlHqYPsdUgQyQhTjC0kV-fxhmkakBrobUzFV1S4.png?imwidth=450',
    name: '${generateWordPairs().take(1).first.asPascalCase} Burger',
    price: 13.55,
    rating: 4.5,
    category: categories[2],
  ),
  // Sushi
  Food(
    id: 13,
    imageUrl: 'https://www.fifteenspatulas.com/wp-content/uploads/2016/06/Homemade-Sushi-1.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Sushi',
    price: 13.55,
    rating: 4.5,
    category: categories[3],
  ),
  Food(
    id: 14,
    imageUrl: 'https://images.japancentre.com/recipes/pics/18/main/makisushi.jpg?1557308201',
    name: '${generateWordPairs().take(1).first.asPascalCase} Sushi',
    price: 13.55,
    rating: 4.5,
    category: categories[3],
  ),
  Food(
    id: 15,
    imageUrl: 'https://cdn3.tmbi.com/toh/GoogleImagesPostCard/California-Sushi-Rolls_exps142244_THHC2238742B09_21_20bC_RMS.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Sushi',
    price: 13.55,
    rating: 4.5,
    category: categories[3],
  ),
  Food(
    id: 16,
    imageUrl: 'https://japan.recipetineats.com/wp-content/uploads/2019/07/Take-away-sushi-rolls_3781NM-500x375.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Sushi',
    price: 13.55,
    rating: 4.5,
    category: categories[3],
  ),
  Food(
    id: 17,
    imageUrl: 'https://www.justonecookbook.com/wp-content/uploads/2020/06/Dragon-Roll-0286-I-500x375.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Sushi',
    price: 13.55,
    rating: 4.5,
    category: categories[3],
  ),
  Food(
    id: 18,
    imageUrl: 'https://leaf.nutrisystem.com/wp-content/uploads/2017/01/sushi-roll.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Sushi',
    price: 13.55,
    rating: 4.5,
    category: categories[3],
  ),
  // Fruit
  Food(
    id: 19,
    imageUrl: 'https://cafedelites.com/wp-content/uploads/2017/03/Fruit-Salad-Honey-Lime-Dressing-IMAGES-223.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Fruit',
    price: 13.55,
    rating: 4.5,
    category: categories[4],
  ),
  Food(
    id: 20,
    imageUrl: 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2017/09/Fruit-kebabs-scaled.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Fruit',
    price: 13.55,
    rating: 4.5,
    category: categories[4],
  ),
  Food(
    id: 21,
    imageUrl: 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Layered-Fresh-Fruit-Salad_EXPS_HCA18_2778_B04_26_3b-1-696x696.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Fruit',
    price: 13.55,
    rating: 4.5,
    category: categories[4],
  ),
  Food(
    id: 22,
    imageUrl: 'https://images-gmi-pmc.edge-generalmills.com/023f25df-408a-44fc-b74e-be5b1dcd4bdf.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Fruit',
    price: 13.55,
    rating: 4.5,
    category: categories[4],
  ),
  Food(
    id: 23,
    imageUrl: 'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/exps4271_MC163887D03_24_4b.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Fruit',
    price: 13.55,
    rating: 4.5,
    category: categories[4],
  ),
  Food(
    id: 24,
    imageUrl:
        'https://lh3.googleusercontent.com/HKQXR3j8g6Zkqkc66w8yF9gICtWT9IemCvE2Wmvsps6SA33kcST0dyhWjAREyfDqmb-B0iWUntHXDsRT2nPaGy-oX41_YblyJV2bfw=w600-rj-l68-e365',
    name: '${generateWordPairs().take(1).first.asPascalCase} Fruit',
    price: 13.55,
    rating: 4.5,
    category: categories[4],
  ),
  // Meat
  Food(
    id: 25,
    imageUrl: 'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/roast-beef-recipes.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Meat',
    price: 13.55,
    rating: 4.5,
    category: categories[5],
  ),
  Food(
    id: 26,
    imageUrl: 'https://www.dinneratthezoo.com/wp-content/uploads/2017/09/mongolian-beef-2.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Meat',
    price: 13.55,
    rating: 4.5,
    category: categories[5],
  ),
  Food(
    id: 27,
    imageUrl: 'https://www.justataste.com/wp-content/uploads/2018/01/easy-beef-and-broccoli-recipe.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Meat',
    price: 13.55,
    rating: 4.5,
    category: categories[5],
  ),
  Food(
    id: 28,
    imageUrl: 'https://www.dinneratthezoo.com/wp-content/uploads/2018/01/steak-bites-3.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Meat',
    price: 13.55,
    rating: 4.5,
    category: categories[5],
  ),
  Food(
    id: 29,
    imageUrl: 'https://www.jocooks.com/wp-content/uploads/2018/10/garlic-butter-steak-bites-1-3.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Meat',
    price: 13.55,
    rating: 4.5,
    category: categories[5],
  ),
  Food(
    id: 30,
    imageUrl: 'https://chefsavvy.com/wp-content/uploads/Easy-Copycat-Mongolian-Beef.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Meat',
    price: 13.55,
    rating: 4.5,
    category: categories[5],
  ),
  // Pasta
  Food(
    id: 31,
    imageUrl: 'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/spaghetti-puttanesca_1.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pasta',
    price: 13.55,
    rating: 4.5,
    category: categories[6],
  ),
  Food(
    id: 32,
    imageUrl: 'https://www.recipetineats.com/wp-content/uploads/2014/06/Pasta1.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pasta',
    price: 13.55,
    rating: 4.5,
    category: categories[6],
  ),
  Food(
    id: 33,
    imageUrl: 'https://www.spendwithpennies.com/wp-content/uploads/2013/11/One-Pot-Chicken-Pasta-SpendWithPennies-4.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pasta',
    price: 13.55,
    rating: 4.5,
    category: categories[6],
  ),
  Food(
    id: 34,
    imageUrl: 'https://www.thechunkychef.com/wp-content/uploads/2017/08/One-Pot-Chicken-Parmesan-Pasta-feat-500x450.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pasta',
    price: 13.55,
    rating: 4.5,
    category: categories[6],
  ),
  Food(
    id: 35,
    imageUrl: 'https://pinchofyum.com/wp-content/uploads/Garlic-Herb-Spaghetti-and-Meatballs-Feature-1.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pasta',
    price: 13.55,
    rating: 4.5,
    category: categories[6],
  ),
  Food(
    id: 36,
    imageUrl: 'https://i.pinimg.com/736x/c7/9d/25/c79d258435396d747cfb962cff017869.jpg',
    name: '${generateWordPairs().take(1).first.asPascalCase} Pasta',
    price: 13.55,
    rating: 4.5,
    category: categories[6],
  ),
];

// bloc = cubit = state_notifier = change_notifier = controller
