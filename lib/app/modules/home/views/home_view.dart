import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        body: Obx(
          () => controller.is_loading.value == true
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: controller.list_data_counter.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.list_data_counter[index].counterid
                          .toString()),
                      subtitle: Text(controller
                          .list_data_counter[index].countername
                          .toString()),
                    );
                  },
                ),
        ));
  }
}
