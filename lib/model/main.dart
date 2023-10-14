import 'package:flutter/material.dart';
import 'package:shopnew/controller/imageConstant.dart';




class BigScreen extends StatelessWidget {
  const BigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.cyan,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
            "Details",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notification_add_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                
                child: Container(
                  height: 370,
                  width: 340,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset("assets/dom-hill-nimElTcTNyY-unsplash.jpg")
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 140,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Regular fit slogan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          "4.5/5 ",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "(45 reviews) ",
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                    Text(
                      "The name says it all,the right size slightly snugs the body leaving the enough room for comfort in the sleeves and waist",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey.shade500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Container(
                  height: 110,
                  width: 200,
                  //color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Choose size",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black87),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "S",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black87),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "L",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black87),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              "M",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              
              Container(
                width: 100,
                height: 50,
                color: Colors.black,
                child: Center(
                    child: Text(
                  "Add to cart",
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
  
