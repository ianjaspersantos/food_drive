import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_drive/cubit/cubit.dart';

class SecondPage extends StatelessWidget {
  final void Function() onPrev;

  const SecondPage({
    Key key,
    this.onPrev,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24.0,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 8.0,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () => onPrev(),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          backgroundImage: NetworkImage('https://ui-avatars.com/api/?name=Ian+Jasper&rounded=true&background=02b14c&color=ffffff'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'My Cart',
                      style: Theme.of(context).textTheme.headline3.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 8.0,
              ),
              sliver: BlocBuilder<CartItemCubit, CartItemState>(
                builder: (context, state) {
                  // TODO: int get itemCount;
                  final length = state.cartItems.length;

                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        // Destruct
                        final cartItem = state.cartItems.elementAt(index);

                        final imageUrl = cartItem.food.imageUrl;
                        final name = cartItem.food.name;
                        final price = cartItem.food.price;
                        final quantity = cartItem.quantity;

                        return CartItemTile(
                          imageUrl: imageUrl,
                          name: name,
                          price: price,
                          quantity: quantity,
                          increment: () => context.bloc<CartItemCubit>().increment(cartItem),
                          decrement: () => context.bloc<CartItemCubit>().decrement(cartItem),
                        );
                      },
                      childCount: length,
                    ),
                  );
                },
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 8.0,
              ),
              sliver: SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.amber.shade100,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(
                              Icons.home,
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                              child: Text(
                            '922 Wilfredo Street',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                          )),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.amber.shade100,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                              child: Text(
                            '**** **** **** **** 1262',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                          )),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 24.0,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery:'),
                        BlocBuilder<CartItemCubit, CartItemState>(
                          buildWhen: (previous, current) => previous.delivery != current.delivery,
                          builder: (context, state) => Text('\$${state.delivery.toStringAsFixed(2)}'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal:'),
                        BlocBuilder<CartItemCubit, CartItemState>(
                          buildWhen: (previous, current) => previous.subtotal != current.subtotal,
                          builder: (context, state) => Text('\$${state.subtotal.toStringAsFixed(2)}'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: Theme.of(context).textTheme.headline4.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
                        ),
                        BlocBuilder<CartItemCubit, CartItemState>(
                          buildWhen: (previous, current) => previous.total != current.total,
                          builder: (context, state) => Text(
                            '\$${state.total.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.headline4.copyWith(color: Color(0xFF363a43), fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21.0,
                    ),
                    FlatButton(
                      color: Color(0xFF02b14c),
                      onPressed: () {},
                      padding: EdgeInsets.all(14.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      colorBrightness: Brightness.dark,
                      child: Text('CHECK OUT'),
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

class CartItemTile extends StatelessWidget {
  const CartItemTile({
    Key key,
    @required this.imageUrl,
    @required this.name,
    @required this.price,
    @required this.quantity,
    @required this.increment,
    @required this.decrement,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final num price;
  final int quantity;
  final GestureTapCallback increment;
  final GestureTapCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                '$imageUrl',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.black54),
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: decrement,
                borderRadius: BorderRadius.circular(6.0),
                child: Ink(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Icon(
                    Icons.remove,
                    size: 16.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(),
                child: Text(
                  '$quantity',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(
                onTap: increment,
                borderRadius: BorderRadius.circular(6.0),
                child: Ink(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
