import 'package:flutter/material.dart';
import 'package:shopnew/controller/imageConstant.dart';
import 'package:shopnew/model/main.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Discover",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Icon(
            Icons.notification_add,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.grey[200],
                        ),
                        height: 50,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
          
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.black : Colors.grey[200],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 50,
                  child: Text(
                    mytapbar[index],
                    style: index == 0
                        ? TextStyle(color: Colors.white)
                        : TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: mypicture.length,
                shrinkWrap: true,
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    
                    mainAxisSpacing: 10,
                    mainAxisExtent: 250,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    
                    Navigator.push(context, MaterialPageRoute(builder: (index)=>BigScreen()));
                  },
                  
                  
                  child: Container(
                          child: Column(
                        children: [
                          Container(
                            height: 200,
                            child: Stack(children: [
                              Image.asset(
                                mypicture[index],
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 90, top: 5),
                                child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))),
                              )
                            ]),
                            color: Colors.black,
                          ),
                          Text(
                            "Regular fit slogan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("RS1900"),
                          )
                        ],
                      )
                      ),
                )
                    ),
          )
        ],
      )),
    );
  }
}
