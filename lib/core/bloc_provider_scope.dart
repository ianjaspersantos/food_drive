import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_drive/cubit/cubit.dart';

class BlocProviderScope extends StatelessWidget {
  final Widget child;

  const BlocProviderScope({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartItemCubit>(create: (_) => CartItemCubit()),
        BlocProvider<CategoryCubit>(create: (_) => CategoryCubit()),
        BlocProvider<FoodCubit>(create: (_) => FoodCubit()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<CategoryCubit, CategoryState>(
            listenWhen: (previous, current) => previous.category != current.category,
            listener: (context, state) {
              context.bloc<FoodCubit>().filterBy(state.category);
            },
          ),
        ],
        child: child,
      ),
    );
  }
}
