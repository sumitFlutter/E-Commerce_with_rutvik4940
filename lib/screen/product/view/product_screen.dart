import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.30,
            width: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(color: Colors.black12),
          ),
          const SizedBox(
            height: 10,
          ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("data"),
              SizedBox(
                height: 10,
              ),
              Text("data"),
              SizedBox(
                height: 20,
              ),
              Text("data"),
              SizedBox(
                height: 10,
              ),
              Text(
                  "he verb fake perhaps first appears in print, in the form faik, in 1810. In James Hardy Vaux's A New and Comprehensive Vocabulary of the Flash Language (vol. 2 of Hardy's Memoirs, London, 1819), it receives a very general definition: a word so variously used, that I can only illustrate it by a few examples."),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("\$ 120"),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "\$ 120",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 8.0,left: 8.0,right: 8.0),
            height: MediaQuery.sizeOf(context).height * 0.07,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent),
            child: const Center(
                child: Text(
              "Add To Cart",
              style: TextStyle(color: Colors.white,fontSize: 20),
            )),
          ),
        ],
      ),
    );
  }
}
