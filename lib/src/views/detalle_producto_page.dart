import 'package:flutter/material.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key, required this.id, this.extras});

  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
        title: Text('Detalle del producto $id'),
      ),
      body: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.network(
              extras?['image'],
              height: 350,
              fit: BoxFit.fill,
            ),
          ),
          // Column(
          // children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.network(
                    extras?['image'],
                    height: 90,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    child: Row(
                  children: [Text('    ')],
                )),
                Center(
                  child: Image.network(
                    extras?['image'],
                    height: 90,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                ),
                Text(
                  '${extras?['rating']['rate']}',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.amberAccent),
                ),
                SizedBox(width: 15),
                Container(
                  child: Text(
                    '${extras?['rating']['count']} reviews',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ), //Aqui
          //],
          // ),
          Container(
              child: Row(
            children: [Text('    ')],
          )),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              ' ${extras?['title']}',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),

          Container(
              child: Row(
            children: [Text('    ')],
          )),
          Center(
            child: Text(
                ' ${extras?['description']}'), //descripcion del producto añadida
          ),
          Container(
              child: Row(
            children: [Text('    ')],
          )),

          Center(
              child: Row(
            children: [
              Text(
                '\$ ${extras?['price']}',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(width: 15),
              Container(
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.black87)),
                      onPressed: () {},
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )))
            ],
          )),
        ],
      ),
    );
  }
}
