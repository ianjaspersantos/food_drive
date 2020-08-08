import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_drive/cubit/cubit.dart';
import 'package:food_drive/extensions/extensions.dart';
import 'package:food_drive/model/category/category.dart';

import 'category_tile.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: width > 720 ? 100.0 : 50.0,
      child: BlocBuilder<CategoryCubit, CategoryState>(
        buildWhen: (previous, current) => previous.categories.length != current.categories.length || previous.category != current.category,
        builder: (context, state) {
          // Todo: int get itemCount {}
          final length = state.categories.length;
          final selectedCategory = state.category;

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: length,
            itemBuilder: (context, index) {
              final category = categories.elementAt(index);

              // Destruct
              // TODO: pass category object
              final emojiUrl = category.emojiUrl;
              final name = category.name;
              final color = category.color;
              final accentColor = category.accentColor;

              return AspectRatio(
                aspectRatio: width > 720 ? (1.0 / 1.0) : (19.0 / 9.0),
                child: CategoryTile(
                  emojiUrl: emojiUrl,
                  name: name,
                  color: HexColor.fromHex(color),
                  accentColor: HexColor.fromHex(accentColor),
                  selected: category == selectedCategory,
                  onTap: () => context.bloc<CategoryCubit>().handleCategoryTileTap(category),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.0);
            },
          );
        },
      ),
    );
  }
}
