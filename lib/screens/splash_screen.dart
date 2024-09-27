import 'package:flutter/material.dart';

class Femm extends StatelessWidget {
  const Femm({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; //411
    final height = MediaQuery.of(context).size.height; //890

    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          width: width,
          height: height * 0.7,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(
                "asset/images/splash_gradient.png",
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Keep track of\nyour period",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                  "Easily and accurately track each\nphase of your menstrual cycle",
                  style: Theme.of(context).textTheme.bodySmall
              ),
              SizedBox(
                height: height / 12,
              ),
              SizedBox(
                width: width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Get Started",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
