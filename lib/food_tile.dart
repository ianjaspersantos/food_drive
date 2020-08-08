import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_drive/cubit/cubit.dart';
import 'package:food_drive/model/food/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;

  const FoodTile({
    Key key,
    @required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width > 720) {
      return FoodGridTile(
        food: food,
      );
    }

    return FoodListTile(
      food: food,
    );
  }
}

class FoodListTile extends StatelessWidget {
  final Food food;

  const FoodListTile({
    Key key,
    @required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Destruct
    final imageUrl = food.imageUrl;
    final name = food.name;
    final rating = food.rating;
    final price = food.price;
    final category = food.category.name;

    return InkWell(
      onTap: () {
        context.bloc<CartItemCubit>().addToCart(food);
      },
      child: Container(
        height: 116.0,
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 8.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  margin: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: Colors.green,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      '$imageUrl',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF02b14c),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topRight: Radius.circular(2.0),
                        bottomLeft: Radius.circular(2.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          size: 12.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '$rating',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$name',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 12.0,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Expanded(
                          child: Text(
                            '25m • Free shipping • $category',
                            maxLines: 1,
                            style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodGridTile extends StatelessWidget {
  final Food food;

  const FoodGridTile({
    Key key,
    @required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Destruct
    final imageUrl = food.imageUrl;
    final name = food.name;
    final rating = food.rating;
    final price = food.price;
    final category = food.category.name;

    return InkWell(
      onTap: () => context.bloc<CartItemCubit>().addToCart(food),
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    '$imageUrl',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              '$name',
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              '\$$price',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Expanded(
                  child: Text(
                    '25m • Free shipping • $category • $rating rating',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
