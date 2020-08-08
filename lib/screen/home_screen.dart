import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_drive/cubit/cubit.dart';

import '../category_view.dart';
import '../food_view.dart';

class FirstPage extends StatelessWidget {
  final void Function() onNext;
  final void Function() onSearch;

  const FirstPage({
    Key key,
    @required this.onNext,
    @required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CartItemCubit, CartItemState>(
        listenWhen: (previous, current) => previous.lastAddedFood != current.lastAddedFood,
        listener: (context, state) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '1 '),
                      TextSpan(text: '${state.lastAddedFood.food.name}', style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.amber)),
                      TextSpan(text: ' added to your cart'),
                    ],
                  ),
                ),
                action: SnackBarAction(
                  textColor: Colors.amber,
                  label: 'UNDO',
                  onPressed: () => context.bloc<CartItemCubit>().undo(),
                ),
              ),
            );
        },
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(32.0),
                sliver: SliverToBoxAdapter(
                  child: HeaderWidget(onNext: onNext, onSearch: onSearch),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: ArticleTile(),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 32.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Subtitle(text: 'Categories', anotherText: 'See All', onTap: () {}),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 8.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: CategoryView(),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 32.0,
                ),
                sliver: SliverToBoxAdapter(
                  child: Subtitle(text: 'Popular Dishes', anotherText: 'See All', onTap: () {}),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(),
                sliver: FoodView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key key,
    @required this.text,
    @required this.anotherText,
    @required this.onTap,
  }) : super(key: key);

  final String text;
  final String anotherText;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '$text',
            style: Theme.of(context).textTheme.headline5.copyWith(color: Color(0xFF363a43)),
          ),
        ),
        InkWell(
          onTap: () => onTap(),
          borderRadius: BorderRadius.circular(16.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
            child: Text(
              '$anotherText',
              style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
    @required this.onNext,
    @required this.onSearch,
  }) : super(key: key);

  final void Function() onNext;
  final void Function() onSearch;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'FOOD',
                      style: Theme.of(context).textTheme.headline3.copyWith(color: Color(0xFF02b14c), fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    TextSpan(
                      text: 'DRIVE',
                      style: Theme.of(context).textTheme.headline3.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                EvaIcons.shoppingBagOutline,
                size: 32.0,
              ),
              onPressed: () => onNext(),
            ),
            SizedBox(
              width: 16.0,
            ),
            IconButton(
              icon: Icon(
                EvaIcons.searchOutline,
                size: 32.0,
              ),
              onPressed: () => onSearch(),
            ),
          ],
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Delivery to',
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.black54, fontWeight: FontWeight.w100),
              ),
              TextSpan(
                text: ' ',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              TextSpan(
                text: '922 Wilfredo Street',
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ArticleTile extends StatelessWidget {
  const ArticleTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          Center(
            child: Image.network(
              'https://i.ibb.co/KNL3Pcw/imageedit-2-8951220027.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'A Guide for Reopening Restaurants in Philippines',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'by Ian Jasper • Aug 09, 2020',
                    style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
