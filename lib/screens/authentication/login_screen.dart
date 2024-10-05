import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    final width = MediaQuery.of(context).size.width; //411
    final height = MediaQuery.of(context).size.height; //890

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 200, left: 10, right: 10),
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "asset/images/Login_gradient.png",
            ),
          ),
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Email",
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
            SizedBox(height: 50,),
            SizedBox(
              width: width,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: 0
                ),
                child: Text(
                  "Get Started",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
        ],
      ),
      ),
    );
  }
}
