import 'package:flutter/material.dart';
import 'package:shopnew/model/mainpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Image.asset("assets/dom-hill-nimElTcTNyY-unsplash.jpg",fit: BoxFit.fill,),
              height: 842,
              width: double.infinity,
              color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730),
              child: Container(
                
                height: 100,
                width: 420,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:  (context) => mainpage(),));
                    },
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Start",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ))),
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
