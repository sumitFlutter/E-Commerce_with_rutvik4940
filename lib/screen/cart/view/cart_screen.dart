

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home/controller/home_controller.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HomeController controller = Get.put(HomeController());
  bool isChecked = false;
  bool showContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: const Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  // margin: const EdgeInsets.all(10),
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       FlutterLogo(
                        size:
                        MediaQuery.sizeOf(context).width * 0.20,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                            children: [
                              const Text(
                                "data",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.48,
                              ),
                              const Text(
                                "\$200",
                                style: TextStyle(
                                    fontSize: 15,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                           Row(
                            children: [
                              const Text(
                                "data",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.48,
                              ),
                              const Text(
                                "\$200",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.01,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Qua: ",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.06,
                                width:MediaQuery.sizeOf(context).width * 0.06 ,
                                 decoration:  BoxDecoration(
                                   shape: BoxShape.circle,
                                     border: Border.all(color: Colors.black)
                                 ),
                                child: Icon(Icons.remove),
                              ),
                               SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.01,
                              ),
                              Obx(
                                () => Text("${controller.counter}"),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.01,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.06,
                                width:MediaQuery.sizeOf(context).width * 0.06 ,
                                decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black)
                                ),
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.01),
                          const Text(
                            "data",
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                              const Text(
                                "Remove",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Amount",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$ 100",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.sizeOf(context).height * 10.0,
                          width: MediaQuery.sizeOf(context).width,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Change Address",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.cancel),
                                    ),
                                  ],
                                ),
                                Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.17,
                                  width: MediaQuery.sizeOf(context).width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Home",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Checkbox(
                                                value: isChecked,
                                                onChanged: (value) {
                                                  // setState(() {
                                                  //   isChecked=value ?? true;
                                                  // });
                                                },
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            "Rutvik Matholiya\n27,kataragam,surat",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.05),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.toNamed('new');
                                      },
                                      child: const Text(
                                        "+ Add New Address",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
