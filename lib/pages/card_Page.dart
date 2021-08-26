import 'package:fluterdemo/models/cart.dart';
import 'package:fluterdemo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/services.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Next page'),
                      ),
                      body: const Center(
                        child: Text(
                          'This is the next page',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  },
                ));
              },
            ),
          ],
        ),
        body: Column(
          children: [
            _CartList().p16().expand(),
            Divider(),
            CardTotal(),
          ],
        ));
  }
}

class CardTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.bold.xl5.color(context.theme.accentColor).make(),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buy Not Suported".text.bold.make(),
              ));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).p1().w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
