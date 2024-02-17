import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class VelocityLearn extends StatelessWidget {
  const VelocityLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VelocityX"),
      ),
      body: Center(
        child: Column(
          children: [
            // text.fontweight.fontsize.position.color.makeCentered("function to create and style widget and used to set position").container.margin.padding.size.color.shape.make()
            "VelocityX"
                .text
                .semiBold
                .xl2
                .fontFamily("customFontFamily")
                // .center
                .white
                .makeCentered()
                .box
                .margin(Vx.m12)
                .p12
                .size(100, 100)
                .color(Colors.black)
                .roundedSM
                .make()
                .onTap(() {
              VxToast.show(
                  bgColor: Colors.black,
                  textColor: Colors.white,
                  textSize: 20,
                  context,
                  msg: "hello ");
            }),

            // HStack([
            //   "VelocityX"
            //       .text
            //       .semiBold
            //       .xl2
            //       .fontFamily("customFontFamily")
            //       // .center
            //       .white
            //       .makeCentered()
            //       .box
            //       .margin(Vx.m12)
            //       .p12
            //       .size(100, 100)
            //       .color(Colors.black)
            //       .roundedSM
            //       .make()
            //       .onTap(() {
            //     VxDialog.showAlert(context,
            //         content: Container(),
            //         confirm: "ok",
            //         title: "alert dialog using vx Dialog");
            //   }),
            //   "Screen Width"
            //       .text
            //       .semiBold
            //       .xl2
            //       .fontFamily("customFontFamily")
            //       // .center
            //       .white
            //       .makeCentered()
            //       .box
            //       .margin(Vx.m12)
            //       .p12
            //       .size(100, 100)
            //       .color(Colors.black)
            //       .roundedSM
            //       .make()
            //       .onTap(() {
            //     VxToast.show(
            //         bgColor: Colors.black,
            //         textColor: Colors.white,
            //         textSize: 20,
            //         context,
            //         msg: "${context.screenWidth} ");
            //   }),
            //   "Screen Height"
            //       .text
            //       .semiBold
            //       .xl2
            //       .fontFamily("customFontFamily")
            //       // .center
            //       .white
            //       .makeCentered()
            //       .box
            //       .margin(Vx.m48)
            //       .p12
            //       .size(100, 100)
            //       .color(Colors.black)
            //       .roundedSM
            //       .make()
            //       .onTap(() {
            //     VxToast.show(
            //         bgColor: Colors.black,
            //         textColor: Colors.white,
            //         textSize: 20,
            //         context,
            //         msg: "${context.screenHeight}");
            //   }),
            // ]).scrollHorizontal(),

            // using velocity swipper
            VxSwiper.builder(
              enlargeCenterPage: true,
              itemCount: 10,
              height: 400,
              itemBuilder: (context, index) {
                return "Item $index"
                    .text
                    .white
                    .make()
                    .box
                    .rounded
                    .alignCenter
                    .color(Vx.randomOpaqueColor)
                    .make()
                    .p4();
              },
            ),

            // using vx rating
            VxRating(
              onRatingUpdate: (value) {},
              count: 5,
              selectionColor: const Color.fromARGB(255, 246, 226, 11),
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
