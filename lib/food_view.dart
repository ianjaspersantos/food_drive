import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_drive/cubit/cubit.dart';

import 'food_tile.dart';

class FoodView extends StatelessWidget {
  const FoodView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width > 720) {
      return FoodGridView();
    }

    return FoodListView();
  }
}

class FoodListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCubit, FoodState>(builder: (context, state) {
      // TODO: Make a getter itemCount
      final length = state.foods.length;

      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return FoodTile(
              food: state.foods.elementAt(index),
            );
          },
          childCount: length,
        ),
      );
    });
  }
}

class FoodGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCubit, FoodState>(builder: (context, state) {
      // TODO: Make a getter itemCount
      final length = state.foods.length;

      return SliverPadding(
        padding: EdgeInsets.only(
          left: 32.0,
          right: 32.0,
          top: 8.0,
          bottom: 32.0,
        ),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return FoodGridTile(
                food: state.foods.elementAt(index),
              );
            },
            childCount: length,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 12.0 / 9.0,
            crossAxisSpacing: 32.0,
            mainAxisSpacing: 32.0,
            maxCrossAxisExtent: 320.0,
          ),
        ),
      );
    });
  }
}
