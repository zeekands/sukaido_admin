import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_menu_controller.dart';

class AddMenuView extends GetView<AddMenuController> {
  const AddMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddMenuView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          controller.image.value.path != ""
              ? Image.file(
                  File(controller.image.value.path),
                  fit: BoxFit.cover,
                )
              : Container(),
          Center(
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () async {
                await controller.getImage(true);
              },
            ),
          ),
        ],
      ),
    );
  }
}
