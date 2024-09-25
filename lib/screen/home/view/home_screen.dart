import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopnow/screen/home/controller/home_controller.dart'; // Import carousel_slider package

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
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
            centerTitle: false,
            elevation: 0,
            expandedHeight: 50,
            title: const Text(
              "SHOPNOW",
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
          ),
        ];
      },
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "View All ->",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.08,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 5.0),
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent.shade200,
                          Colors.cyanAccent.shade200,
                        ],
                      ),
                    ),
                    child: Center(child: const Text("data")),

                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.sizeOf(context).height * 0.25,
                autoPlay: true,
                enlargeCenterPage: false,
                initialPage: 0,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {},
              ),
              itemCount: 5,
              itemBuilder: (context, index, realIndex) => Container(
                margin: const EdgeInsets.all(1),
                color: Colors.green,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "It's Style Season",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed('product');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    ));
  }
}
