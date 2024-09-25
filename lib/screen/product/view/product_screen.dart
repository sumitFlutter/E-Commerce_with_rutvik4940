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
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.search),
          // ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.notifications_active),
          // ),
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
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("data"),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.01,
                ),
                const Text("data"),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.01,
                ),
                const Text("data"),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.01,
                ),
                const Text(
                    "he verb fake perhaps first appears in print, in the form faik, in 1810. In James Hardy Vaux's A New and Comprehensive Vocabulary of the Flash Language (vol. 2 of Hardy's Memoirs, London, 1819), it receives a very general definition: a word so variously used, that I can only illustrate it by a few examples."),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.01,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("\$ 120"),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.05,
                ),
                const Text(
                  "\$ 220",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
            height: MediaQuery.sizeOf(context).height * 0.07,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent),
            child: const Center(
              child: Text(
                "Add To Cart",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
