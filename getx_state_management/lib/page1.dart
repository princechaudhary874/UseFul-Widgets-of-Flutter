import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controller/page1_controller.dart';
import 'package:getx_state_management/home_page.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    //creating instance of page1controller
    final Page1Controller page1Controller = Get.put(Page1Controller());

    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            //Navigate to home page using getx
            ElevatedButton(
              onPressed: () {
                Get.to(() => const HomePage());
              },
              child: const Text('Home Page'),
            ),
            const SizedBox(
              height: 20,
            ),
            //textfield for entering name
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //textfield for entering email
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //button to update name and email
            ElevatedButton(
              onPressed: () {
                page1Controller.updateName(usernameController.text);
                page1Controller.updateEmail(emailController.text);
              },
              child: const Text('Update Name and Email'),
            ),

            const SizedBox(
              height: 20,
            ),

            //showing name and email using obx
            Obx(
              () => Text(
                'Name: ${page1Controller.name.value}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Obx(
              () => Text(
                'email: ${page1Controller.email.value}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
