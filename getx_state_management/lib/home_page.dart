import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controller/home_page_controller.dart';
import 'package:getx_state_management/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //creating instance of homepagecontroller
    final HomePageController controller = Get.put(HomePageController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            //snackbar using getx
            ElevatedButton(
              onPressed: () {
                Get.snackbar('SnackBar', 'This is a SnackBar');
              },
              child: const Text('SnackBar'),
            ),
            const SizedBox(
              height: 20,
            ),

            //showing dialog using getx
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Dialog',
                  middleText: 'This is a Dialog',
                );
              },
              child: const Text('Dialog'),
            ),

            const SizedBox(
              height: 20,
            ),

            //text for showning text of counter
            //using obx to update the text when counter value changes
            Obx(
              () => Text(
                'Counter Value: ${controller.counter.value}',
                style: const TextStyle(fontSize: 70),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //increment button
            ElevatedButton(
                onPressed: () {
                  controller.incrementCounter();
                },
                child: const Text('Increment Counter')),
            const SizedBox(
              height: 20,
            ),
            //decrement button
            ElevatedButton(
                onPressed: () {
                  controller.decrementCounter();
                },
                child: const Text('Decrement Counter')),

            const SizedBox(
              height: 20,
            ),

            //navigation using getx
            ElevatedButton(
              onPressed: () {
                //navigate to page1 screen without replacement
                Get.offAll(() => const Page1Screen());
              },
              child: const Text('Go to Page1 Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
